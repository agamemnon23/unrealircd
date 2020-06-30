module "third/metadata-db"
{
	description "Metadata storage module";
	version "5.0.2";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#metadata-db";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/metadata-db.c";
	sha256sum "1236e94b8f368879fd77ad0bb272f4b9acba42cccf88f1aa1752cc6a8dd926df";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/metadata-db\";";
		"And /REHASH the IRCd.";
		"It'll take care of users on all servers in your network.";
		"The \"third/metadata\" module is required for it to work.";
		"The metadata-db may be additionaly configured to change the defaults.";
		"See documentation for help.";
	}
}

module "third/uline_nickhost"
{
	description "Requires people to address services like NickServ@services.my.net";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/uline_nickhost";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/uline_nickhost.c";
	sha256sum "bebb1d6f779d1bc1252dc66fd4bd4152d20f4a771610f6297c2cb32baabccb96";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/uline_nickhost\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/uline_nickhost";
	}
}

module "third/geoip-connect-notice"
{
	description "Notify opers about user's country";
	version "5.0.1";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#geoip-connect-notice";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/geoip-connect-notice.c";
	sha256sum "696e3aa69caf7d92b817b8386aef19f1d10afdec8ffbb147169aa118bac13adb";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/geoip-connect-notice\";";
		"And /REHASH the IRCd.";
		"Remember that you need a correctly configured \"geoip-base\" or \"geoip-transfer\"";
		"module installed on this server for geoip-connect-notice to work.";
	}
}

module "third/joinmute"
{
	description "Adds +J chmode: Mute newly joined people for +J X seconds";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/joinmute";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/joinmute.c";
	sha256sum "d94dd43f2cb7b9a4fff8b9261c2faa6a2a586359b6385ce66d706c9da5ca037a";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/joinmute\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/joinmute";
	}
}

module "third/block_notlsident"
{
	description "Restrict certain idents to SSL connections only";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/block_notlsident";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/block_notlsident.c";
	sha256sum "056e363bd9259f3286f7caa683d25dbcfd3abe175f7a0077e7c55db2f7b176e9";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/block_notlsident\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/block_notlsident";
	}
}

module "third/topicgreeting"
{
	description "Greet users who join a channel by changing the topic (channel mode +g)";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/topicgreeting";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/topicgreeting.c";
	sha256sum "3566d9ebcafe32ceb19e3c5b4527c53efad7afddd50c4a23fdbcefb88a994a58";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/topicgreeting\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/topicgreeting";
	}
}

module "third/unauthban"
{
	description "ExtBan ~I: bans that match only users that are not logged in";
	version "5.0";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/unauthban.c";
	sha256sum "050b4539bad7547ba20a783383c2d28eb1946711f6d258216400f80d0f5732d0";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/unauthban\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
		"Detailed documentation is available on https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	}
}

module "third/rtkl"
{
	description "Allows privileged opers to remove remote servers' local K/Z-Lines";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/rtkl";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/rtkl.c";
	sha256sum "4750ed0428a41e76641bea6fdb1ae58808a2d53a9f4b72d9c7f8a800cabe4597";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/rtkl\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/rtkl";
	}
}

module "third/clearlist"
{
	description "Adds CLEARLIST command to clear out banlists in bulk";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/clearlist";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/clearlist.c";
	sha256sum "c920c9d343949a2508e84e2e207756ba730c399f17748ec73002dc51275273f5";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/clearlist\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/clearlist";
	}
}

module "third/fantasy"
{
	description "Implements custom fantasy channel !cmds";
	version "2.0.2";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/fantasy";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/fantasy.c";
	sha256sum "1c388571b2f934c952ed20515f77ceb14e6da5adf49b8094d0e92febc80ab045";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/fantasy\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/fantasy";
	}
}

module "third/operpasswd"
{
	description "Snomask for failed OPER attempts with the ability to kill";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/operpasswd";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/operpasswd.c";
	sha256sum "d0dd298f63849741517b0ab34aa792e9de673e0320bfcc1f3885c3aa0e60f107";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/operpasswd\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/operpasswd";
	}
}

module "third/message_commonchans"
{
	description "Adds umode +c to prevent people who aren't sharing a channel with you from messaging you";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/message_commonchans";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/message_commonchans.c";
	sha256sum "bc4e312f282bdb7e2aa25515fe116ed748792ccc108e218965e3454ea877e452";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/message_commonchans\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/message_commonchans";
	}
}

module "third/geoip-whois"
{
	description "Add country info to /whois";
	version "5.0.2";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#geoip-whois";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/geoip-whois.c";
	sha256sum "54c7f0295d33b5d2cff6ab4958c1b0efbc44494f8def61b44adf3d6ce10d1591";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now you need to add a loadmodule line:";
		"loadmodule \"third/geoip-whois\";";
		"And /REHASH the IRCd.";
		"It'll take care of users on all servers in your network.";
		"Remember that you need \"geoip-base\" module installed on this server";
		"for geoip-whois to work.";
		"Detailed documentation is available on https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#geoip-whois";
	}
}

module "third/bot-tag"
{
	description "Add inspircd.org/bot tag";
	version "5.0";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#bot-tag";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/bot-tag.c";
	sha256sum "17ff1762b56679ddad0bd20571548404eaaede6196f04695fc6e454cfad3a423";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/bot-tag\";";
		"And /REHASH the IRCd.";
	}
}

module "third/tracetklbug"
{
	description "Trace TKL bug";
	version "1.0.0";
	author "UnrealIRCd Team";
	documentation "https://bugs.unrealircd.org/view.php?id=5566";
	troubleshooting "Contact syzop@unrealircd.org if this module fails to compile";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/tracetklbug.c";
	sha256sum "41eccd7ff7458b65de48757171a17896143f817dfd483cf8eb4b67a80e62d27a";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/tracetklbug\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
	}
}

module "third/banfix_voice"
{
	description "Correct some odd behaviour in regards to banned-but-voiced users";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/banfix_voice";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/banfix_voice.c";
	sha256sum "d372fa93cbcf75045718dd8bbd388216aa4a6f2cc5e9dff69ef84542dc8b4d07";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/banfix_voice\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/banfix_voice";
	}
}

module "third/dumpcmds"
{
	description "Dump IRC commands to a file";
	version "1.0";
	author "Syzop";
	documentation "https://www.unrealircd.org/docs/dumpcmds%20module";
	troubleshooting "Contact syzop@unrealircd.org if this module fails to compile";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/dumpcmds.c";
	sha256sum "d68e332bc8f0559994e2c4d6e67a222e43d681ee7e2a664666db5b487c069bd9";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/dumpcmds\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
		"The list of available IRC commands will be dumped to data/dumpcmds.txt";
	}
}

module "third/autojoin_byport"
{
	description "Auto-join channels on connect based on connection port";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/autojoin_byport";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/autojoin_byport.c";
	sha256sum "b62ee45e3f19f0bfac320ab9852b46e20dc13e3c5de1662099d1e7ee28bf8673";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/autojoin_byport\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/autojoin_byport";
	}
}

module "third/block_masshighlight"
{
	description "Prevent mass highlights network-wide";
	version "2.1.1";
	author "Gottem / k4be";
	documentation "https://gottem.nl/unreal/man/block_masshighlight";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/block_masshighlight.c";
	sha256sum "fba8185857525dc2e3ee0aa20ef835ab191b790d2398a804e0171fbde45dbdfd";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/block_masshighlight\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/block_masshighlight";
	}
}

module "third/websocket_restrict"
{
	description "Impose restrictions on websocket connections";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/websocket_restrict";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/websocket_restrict.c";
	sha256sum "1f4fd0bbeb87e61b75aaf9dd0683571a584f1c620e1d341b13e3acdf51912fe8";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/websocket_restrict\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/websocket_restrict";
	}
}

module "third/autovhost"
{
	description "Apply vhosts at connect time based on users' raw nick formats or IPs";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/autovhost";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/autovhost.c";
	sha256sum "ba33b1cc229fba3eece74ed08d9423cca9416f559bdb8607876b2fc7ccec56bb";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/autovhost\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/autovhost";
	}
}

module "third/anti_amsg"
{
	description "Drop messages originating from /amsg";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/anti_amsg";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/anti_amsg.c";
	sha256sum "fa4e6d37cdfb3564dafcbf280561f23bd1d1d3e216234bd63d25f1e81bc43440";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/anti_amsg\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/anti_amsg";
	}
}

module "third/geoip-chanban"
{
	description "ExtBan ~C - Ban/exempt by country code";
	version "5.0";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/geoip-chanban.c";
	sha256sum "f8f0e9277e9d9c5f523d0eb7754a2dd7ac3cabc27eef42159ee86bdbaab6f9cf";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now you need to add a loadmodule line:";
		"loadmodule \"third/geoip-chanban\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
		"Remember that you need \"geoip-base\" or \"geoip-transfer\" module installed on this server";
		"for geoip-chanban to work. See docs for more info.";
		"Detailed documentation is available on https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	}
}

module "third/findchmodes"
{
	description "Find channels by channel modes";
	version "5.0";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/findchmodes.c";
	sha256sum "58aae6c73fe31b8210360085bd150c8d46d222ade502141c418a4304badb1c7c";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/findchmodes\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
	}
}

module "third/metadata"
{
	description "draft/metadata and draft/metadata-notify-2 cap";
	version "5.2";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#metadata";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/metadata.c";
	sha256sum "9a42b8ba14cb445897e52706eaab6558fdc5f734b2d2f8941d6f39adc5941a08";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/metadata\";";
		"And /REHASH the IRCd.";
		"The module may be additionaly configured to change the defaults.";
		"See documentation for help.";
		"Please note that the implemented feature is still \"Work In Progress\".";
	}
}

module "third/setname"
{
	description "IRCv3-compatible command /setname (CAP setname)";
	version "5.0";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#setname";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/setname.c";
	sha256sum "48531eb3295b07f953566567146618b1039dcd49750d1c209baeff6b8b82f3f9";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/setname\";";
		"And /REHASH the IRCd.";
		"The module does not need any configuration.";
	}
}

module "third/kickjoindelay"
{
	description "Chanmode +j to prevent people from rejoining too fast after a kick";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/kickjoindelay";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/kickjoindelay.c";
	sha256sum "b19575299c1fc47ddef4c8509e3ab76a6161f63e522bad69b12f52795ca3338e";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/kickjoindelay\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/kickjoindelay";
	}
}

module "third/anticaps"
{
	description "Block/lowercase messages that contain a configurable amount of capital letters";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/anticaps";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/anticaps.c";
	sha256sum "a7ba61f8b0ec08c86e63b7495f57b39eb1c888b0b151ac246015f163c08fb7ef";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/anticaps\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/anticaps";
	}
}

module "third/denyban"
{
	description "Deny specific ban masks network-wide";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/denyban";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/denyban.c";
	sha256sum "51c2c554e02fe320ed8df32885ed40e1fcdd431cec7f001359ec51aeb037f47a";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/denyban\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/denyban";
	}
}

module "third/portsifresi"
{
	description "Protect specific ports with a password";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/portsifresi";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/portsifresi.c";
	sha256sum "094413f2751f5027cf2a26beff014f415be842b296f420cfdfdab7b2aaaf5b85";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/portsifresi\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/portsifresi";
	}
}

module "third/wwwstats"
{
	description "Provides data for network stats";
	version "5.0";
	author "rocket, k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/wwwstats.c";
	sha256sum "2ad940cd6628032f35a4b7c6299a3e82a4e185747a2f147eb0a1bca63f5dbf9e";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now you need to add a loadmodule line:";
		"loadmodule \"third/wwwstats\";";
		"then create a valid configuration block as in the example below:";
		"wwwstats {";
		" socket-path \"/tmp/wwwstats.sock\"; // do not specify if you don't want the socket";
		"};";
		"And /REHASH the IRCd.";
		"";
		"If you want a version with MySQL/MariaDB support, look for 'wwwstats-mysql'";
		"on https://github.com/pirc-pl/unrealircd-modules - unfortunately it can't";
		"be installed by the module manager.";
		"Detailed documentation is available on https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#wwwstats";
	}
}

module "third/listrestrict"
{
	description "Impose certain restrictions on /LIST usage";
	version "2.1";
	author "Gottem / k4be";
	documentation "https://gottem.nl/unreal/man/listrestrict";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/listrestrict.c";
	sha256sum "262040d3a7caa92355228fd2a867836cb59514facb40fe74133b1cadd5ce1cad";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/listrestrict\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/listrestrict";
	}
}

module "third/bancheck_access"
{
	description "Prevents people who have +o or higher from getting banned, unless done by people with +a/+q or opers";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/bancheck_access";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/bancheck_access.c";
	sha256sum "897d7cefa6558726c7b3bd993635e175d1f1552b5a9136a42727a4d645add95d";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/bancheck_access\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/bancheck_access";
	}
}

module "third/noghosts"
{
	description "Keep channels clear of \"ghosts\" of opers";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/noghosts";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/noghosts.c";
	sha256sum "409f5b75c66d111a806d043cea886f7551304a4e640aeb32a51b91b287505def";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/noghosts\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/noghosts";
	}
}

module "third/textshun"
{
	description "Drop messages based on nick and body";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/textshun";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/textshun.c";
	sha256sum "d41eb3d9a6a001a7d1efb6053c8f399a5f017dab0182338836c1ff20fb21b154";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/textshun\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/textshun";
	}
}

module "third/showwebirc"
{
	description "Add SWHOIS info for WEBIRC users";
	version "5.0";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/showwebirc.c";
	sha256sum "e78b99f414125bc045554c582f0c9ad1dff4e069c13d40bba5adad987a65bf96";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/showwebirc\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
	}
}

module "third/debug"
{
	description "Allows privileged opers to easily view internal (configuration) data";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/debug";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/debug.c";
	sha256sum "e7ccdce6044af6a2f9b9056f82a79b8970a00e202e561252da05e4497e932839";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/debug\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/debug";
	}
}

module "third/pubnetinfo"
{
	description "Display public network/server information such as SSL/TLS links";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/pubnetinfo";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/pubnetinfo.c";
	sha256sum "b87fd4ca62f1e120ebeddb973d1d306e0747a766aae322af10c5e0338b8a8f46";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/pubnetinfo\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/pubnetinfo";
	}
}

module "third/modmanager_irc"
{
	description "Control Unreal's module manager through IRC";
	version "1.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/modmanager_irc";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/modmanager_irc.c";
	sha256sum "60cd35edf4ecc2abcd92d1a2f7065b8b25f11581d57cae9cfd9d4a17974056a3";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/modmanager_irc\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/modmanager_irc";
	}
}

module "third/sacmds"
{
	description "Implements SA* commands for privileged opers";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/sacmds";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/sacmds.c";
	sha256sum "56fcc5919a47410fbcd9b569e725ee5cf1b56c4f5156c755ba0d0b414337fb48";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/sacmds\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/sacmds";
	}
}

module "third/block_no_tls"
{
	description "Allows privileged opers to temporarily block new, non-TLS (SSL) user connections";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/block_no_tls";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/block_no_tls.c";
	sha256sum "a5ee1f802f84a8bda1cd880b5ef1d6a543fec4dccd6d90412a969eac3db04eb0";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/block_no_tls\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/block_no_tls";
	}
}

module "third/plainusers"
{
	description "Allows opers to list all users NOT connected over SSL/TLS";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/plainusers";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/plainusers.c";
	sha256sum "837036957aa3fb848a793735d346a4edd0351d9dfd984d405e9a0faa26bebc31";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/plainusers\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/plainusers";
	}
}

module "third/rehashgem"
{
	description "Implements an additional rehash flag -gem";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/rehashgem";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/rehashgem.c";
	sha256sum "75829d0c097d36dc83e40dfbd25d52645efd026d784368903bdfe9515f104c56";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/rehashgem\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/rehashgem";
	}
}

module "third/operoverride_ext"
{
	description "Additional OperOverride functionality";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/operoverride_ext";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/operoverride_ext.c";
	sha256sum "391e1e7b3df36b07e0a15ff2453bff6a599aaa3c3121011452ceb4eaac4184c6";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/operoverride_ext\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/operoverride_ext";
	}
}

module "third/gecos_replace"
{
	description "Enables replacing text in the gecos field on-connect";
	version "1.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/gecos_replace";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/gecos_replace.c";
	sha256sum "98ccc48c8e0af70d2b50cd91904109749a3391dab54c984e0ed4ba5b7f5ed913";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/gecos_replace\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/gecos_replace";
	}
}

module "third/monitor"
{
	description "Command /monitor (IRCv3)";
	version "5.0";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#monitor";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/monitor.c";
	sha256sum "663553bb261152fcac7a77f67768cad084bc08156dd552886cb6f5553f2e74ee";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/monitor\";";
		"And /REHASH the IRCd.";
		"The module does not need any configuration.";
	}
}

module "third/noinvite"
{
	description "Adds umode +N to block invites";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/noinvite";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/noinvite.c";
	sha256sum "8db4ff99f74b83051ae8d187b3548464f92b2d335def569b56e75cdbba9b7e75";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/noinvite\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/noinvite";
	}
}

module "third/geoip-transfer"
{
	description "GeoIP data provider / data transfer module";
	version "5.0.1";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/geoip-transfer.c";
	sha256sum "c6ce3d14f116125af36706b38bc8aabc823407cb7dce5ec7d76a41a2fc2fe33e";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/geoip-transfer\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
		"Remember that you need other \"geoip\" module to make a real use of this one,";
		"and the \"geoip-base\" module on at least one OTHER server to provide the data.";
	}
}

module "third/getlegitusers"
{
	description "Command /getlegitusers to show user/bot count across the network";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/getlegitusers";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/getlegitusers.c";
	sha256sum "cd3eab2df6146870f926146b3bf1bd269b4afa715e3f8ea86e3e8e8a43981ce7";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/getlegitusers\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/getlegitusers";
	}
}

module "third/nopmchannel"
{
	description "Prevents users sharing a channel from privately messaging each other";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/nopmchannel";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/nopmchannel.c";
	sha256sum "a1fc4433f49f1ff8eb705d0a994a9d19788b0d4964a159f23761d7f0265dd061";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/nopmchannel\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/nopmchannel";
	}
}

module "third/pmlist"
{
	description "Implements umode +P to only allow only certain people to privately message you";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/pmlist";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/pmlist.c";
	sha256sum "63089998bb1aa3d34e8f93979eca214289232c36c641c71e33adc6f02194f8df";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/pmlist\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/pmlist";
	}
}

module "third/auditorium"
{
	description "Channel mode +u to show channel events/messages to/from people with +o/+a/+q only";
	version "2.0.2";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/auditorium";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/auditorium.c";
	sha256sum "b1d356fc85d355e46c01aafbd2e2587a67a7dff93e0861f5068187a67e56e3b9";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/auditorium\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/auditorium";
	}
}

module "third/nicksuffix"
{
	description "Restrict /nick usage to suffixing your base nick";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/nicksuffix";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/nicksuffix.c";
	sha256sum "6cd8bc95cef7c3a8f34dc2b1cce569f782228a542bd104e0c1cf8d16c7f053b3";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/nicksuffix\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/nicksuffix";
	}
}

module "third/extwarn"
{
	description "Enables additional configuration error checking";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/extwarn";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/extwarn.c";
	sha256sum "328ec7bc89ed693b0026d44eb08225f9dfb9a2d48a1e72e968c1382bb3acd8c5";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/extwarn\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/extwarn";
	}
}

module "third/examplemod"
{
	description "This is a simple test module";
	version "1.0.0";
	author "Bram Matthys (Syzop)";
	documentation "https://www.unrealircd.org/docs/";
	troubleshooting "In case of problems, check the FAQ at ... or e-mail me at ...";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/examplemod.c";
	sha256sum "99794833ba9c00ca88a1584c8ecdd24b65ff1e4faf7971a617459306fdc57cfa";
	min-unrealircd-version "5.*";
	max-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now all you need to do is add a loadmodule line:";
		"loadmodule \"third/examplemod\";";
		"And /REHASH the IRCd.";
		"The module does not need any other configuration.";
	}
}

module "third/geoip-base"
{
	description "GeoIP data provider module";
	version "5.0.3";
	author "k4be@PIRC";
	documentation "https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#geoip-base";
	troubleshooting "In case of problems, contact k4be on irc.pirc.pl.";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/geoip-base.c";
	sha256sum "3349fd4e98f1ce47f0b06c080a5b164cd2bc1998c78e8e25b28f35a72e2db900";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed. Now you need to copy necessary files to your conf/ directory";
		"(see docs on how to obtain these), and add a loadmodule line:";
		"loadmodule \"third/geoip-base\";";
		"And /REHASH the IRCd.";
		"Remember that you need other \"geoip\" module to make a real use of this one.";
		"DON'T load the \"geoip-transfer\" module on this server.";
		"Detailed documentation is available on https://github.com/pirc-pl/unrealircd-modules/blob/master/README.md#geoip-base";
	}
}

module "third/fixhop"
{
	description "The +h access mode seems to be a little borked/limited, this module implements some tweaks for it";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/fixhop";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/fixhop.c";
	sha256sum "f0f57a48f3ccdc10eedc41a32a924af5465bed9ec275b0031ae586b37ce41089";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/fixhop\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/fixhop";
	}
}

module "third/repeatprot"
{
	description "G(Z)-Line/kill users (or block their messages) who spam through CTCP, INVITE, NOTICE and/or PRIVMSG";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/repeatprot";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/repeatprot.c";
	sha256sum "b28fc51cba785eab7824b479826bc65056f1d9d18939f1ba7c2ce69adb54944a";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/repeatprot\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/repeatprot";
	}
}

module "third/chansno"
{
	description "Allows opers to assign channels for specific server notifications (sort of like snomasks)";
	version "2.1.1";
	author "Gottem / jesopo";
	documentation "https://gottem.nl/unreal/man/chansno";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/chansno.c";
	sha256sum "83974585e370fd34027b4f493f8193778fa9bbd23d415bffb1326371b6fa54d7";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/chansno\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/chansno";
	}
}

module "third/clones"
{
	description "Adds a command /CLONES to list all users having the same IP address matching the given options";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/clones";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/clones.c";
	sha256sum "e0fb3e198b6e43762faef2c9ae56d30a4851451c98e80befbfeb03dec601d9cd";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/clones\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/clones";
	}
}

module "third/signore"
{
	description "Implements an I-Line for adding server-side ignores";
	version "2.0.1";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/signore";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/signore.c";
	sha256sum "fb96521f1ad262fab6da72ac9687b9fb4f3bec44e23e5b559c53554c683d5468";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/signore\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/signore";
	}
}

module "third/commandsno"
{
	description "Adds snomask +C: lets IRC operators see command usages";
	version "2.0";
	author "Gottem";
	documentation "https://gottem.nl/unreal/man/commandsno";
	troubleshooting "In case of problems, check the FAQ at https://gottem.nl/unreal/halp or e-mail me at support@gottem.nl";
	source "https://raw.githubusercontent.com/unrealircd/unrealircd-contrib/master/files/commandsno.c";
	sha256sum "ba390437d5f5f687b81417cc871078b6846da22d0934331878ac8044620ba3a9";
	min-unrealircd-version "5.*";
	post-install-text
	{
		"The module is installed, now all you need to do is add a 'loadmodule' line to your config file:";
		"loadmodule \"third/commandsno\";";
		"Then /rehash the IRCd.";
		"For usage information, refer to the module's documentation found at: https://gottem.nl/unreal/man/commandsno";
	}
}

