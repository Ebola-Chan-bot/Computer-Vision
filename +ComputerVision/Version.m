function V = Version(AlwaysCheck)
arguments
	AlwaysCheck=false;
end
persistent pVersion
if isempty(pVersion)||AlwaysCheck
	V='1.2.1';
	if~isempty(metafunction('TextAnalytics.CheckUpdateFromGitHub'))
		TextAnalytics.CheckUpdateFromGitHub('https://github.com/Ebola-Chan-bot/Computer-Vision/releases','埃博拉酱的计算机视觉工具箱',['v',V]);
	end
	pVersion.Me=matlab.mpm.Version(V);
	pVersion.MATLAB='R2026a';
	pVersion.Dependencies=array2table(["MATLAB"	"20.2.3"	"https://github.com/Ebola-Chan-bot/MATLAB-Extension/releases"],VariableNames=["Namespace","Version","URL"]);
	pVersion.Dependencies.Version=matlab.mpm.Version(pVersion.Dependencies.Version);
end
V=pVersion;