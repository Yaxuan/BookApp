using System;
using System.Configuration;
using BookClient.Interface;

namespace BookClient.Factory
{
    public class ServiceFactory: IServiceFactory
    {
        public static readonly string BookRestApiSoupUiTestUrl = "http://localhost:8080/"; //soupUI

        public static readonly string BookRestApiLocalTestUrl = "http://localhost:60673/";

        public string GetServiceUri()
        {
            string config = ConfigurationManager.AppSettings["RestServiceConfig"];

            string uri;

            switch (config)
            {
                case "GLSRestService":
                    // Calling a real API
                    throw new NotImplementedException("GLSRestService not impelmented"); //TODO: The uri should of course also be taken from config files.
                    break;
                case "TestGLSRestService":
                    // Calling a local service
                    uri = "http://localhost:60673/";
                    break;
                case "TestMockGLSRestService":
                    // Calling a local service
                    uri = "http://localhost:8080/"; //soupUI
                    break;
                default:
                    throw new NotImplementedException(config + " not implmented");
            }

            return uri;
        }
    }
}