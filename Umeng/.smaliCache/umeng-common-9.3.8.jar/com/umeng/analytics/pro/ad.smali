.class public Lcom/umeng/analytics/pro/ad;
.super Ljava/lang/Object;
.source "OppoDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/y;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/ad;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 18
    nop

    .line 20
    nop

    .line 21
    nop

    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_7
    iget-boolean v4, p0, Lcom/umeng/analytics/pro/ad;->a:Z

    if-nez v4, :cond_10

    .line 26
    invoke-static {p1}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->a(Landroid/content/Context;)V

    .line 27
    iput-boolean v3, p0, Lcom/umeng/analytics/pro/ad;->a:Z

    .line 29
    :cond_10
    invoke-static {}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->a()Z

    move-result v4

    if-nez v4, :cond_20

    .line 30
    new-array p1, v3, [Ljava/lang/String;

    const-string v4, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301\u83b7\u53d6OAID"

    aput-object v4, p1, v1

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 31
    goto :goto_25

    .line 35
    :cond_20
    invoke-static {p1}, Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_26

    .line 36
    move-object v0, p1

    .line 42
    :goto_25
    goto :goto_31

    .line 38
    :catch_26
    move-exception p1

    .line 40
    new-array p1, v3, [Ljava/lang/String;

    const-string v3, "\u672a\u68c0\u6d4b\u5230\u60a8\u96c6\u6210OAID SDK\u5305"

    aput-object v3, p1, v1

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 41
    nop

    .line 43
    :goto_31
    return-object v0
.end method
