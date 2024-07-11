.class Lcom/umeng/analytics/pro/ag;
.super Ljava/lang/Object;
.source "XiaomiDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/y;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 20
    nop

    .line 21
    nop

    .line 23
    nop

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_7
    invoke-static {}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->a()Z

    move-result v4

    if-nez v4, :cond_17

    .line 30
    new-array p1, v2, [Ljava/lang/String;

    const-string v4, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301\u83b7\u53d6OAID"

    aput-object v4, p1, v1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 31
    goto :goto_1c

    .line 34
    :cond_17
    invoke-static {p1}, Lorg/repackage/com/miui/deviceid/IdentifierManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1d

    .line 35
    move-object v0, p1

    .line 41
    :goto_1c
    goto :goto_28

    .line 37
    :catch_1d
    move-exception p1

    .line 39
    new-array p1, v2, [Ljava/lang/String;

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u60a8\u96c6\u6210OAID SDK\u5305"

    aput-object v2, p1, v1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 40
    nop

    .line 42
    :goto_28
    return-object v0
.end method
