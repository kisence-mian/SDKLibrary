.class public final Lcom/qq/e/comm/managers/setting/b;
.super Lcom/qq/e/comm/managers/setting/d;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/d;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "getad_report_sampling_rate"

    invoke-virtual {p0, v1, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "expad_report_sampling_rate"

    invoke-virtual {p0, v1, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "clkad_report_sampling_rate"

    invoke-virtual {p0, v2, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "require_window_focus"

    invoke-virtual {p0, v2, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "show_logo"

    invoke-virtual {p0, v2, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "innerBrowserScheme"

    const-string v3, "weixin,tel,openapp.jdmobile"

    invoke-virtual {p0, v2, v3}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "flow_control"

    invoke-virtual {p0, v2, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "gdtSdkIdentity"

    invoke-virtual {p0, v2, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "getSdkChannel"

    invoke-virtual {p0, v2, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "getSdkEX1"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "getSdkEX2"

    invoke-virtual {p0, v2, v3}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rf"

    invoke-virtual {p0, v3, v2}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spl_ltime"

    invoke-virtual {p0, v3, v2}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spl_exptime"

    invoke-virtual {p0, v3, v2}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spl_conn"

    invoke-virtual {p0, v3, v2}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "spl_maxrn"

    invoke-virtual {p0, v2, v1}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "force_exp"

    invoke-virtual {p0, v1, v0}, Lcom/qq/e/comm/managers/setting/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/qq/e/comm/managers/setting/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
