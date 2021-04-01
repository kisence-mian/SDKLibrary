.class Lcom/bytedance/applog/b/t;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 18
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 19
    iput-object p1, p0, Lcom/bytedance/applog/b/t;->e:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bytedance/applog/b/t;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 25
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "sim_region"

    invoke-static {p1, v1, v0}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
