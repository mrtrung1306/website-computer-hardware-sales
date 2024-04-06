using System.Web.Optimization;

[assembly: WebActivatorEx.PostApplicationStartMethod(typeof(DoAnLapTrinhWed_2.App_Start.AjaxHelperBundleConfig), "RegisterBundles")]

namespace DoAnLapTrinhWed_2.App_Start
{
	public class AjaxHelperBundleConfig
	{
		public static void RegisterBundles()
		{
			BundleTable.Bundles.Add(new ScriptBundle("~/bundles/ajaxhelper").Include("~/Scripts/jquery.ajaxhelper.js"));
		}
	}
}