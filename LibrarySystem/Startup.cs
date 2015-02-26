using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VirtualCollege.Startup))]
namespace VirtualCollege
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
