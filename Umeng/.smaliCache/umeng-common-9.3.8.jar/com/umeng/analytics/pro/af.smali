.class public Lcom/umeng/analytics/pro/af;
.super Ljava/lang/Object;
.source "VivoDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/y;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 22
    nop

    .line 24
    nop

    .line 25
    nop

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_7
    invoke-static {p1}, Lorg/repackage/com/vivo/identifier/IdentifierManager;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 31
    new-array p1, v2, [Ljava/lang/String;

    const-string v4, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301\u83b7\u53d6OAID"

    aput-object v4, p1, v1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 32
    goto :goto_1c

    .line 36
    :cond_17
    invoke-static {p1}, Lorg/repackage/com/vivo/identifier/IdentifierManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1d

    .line 37
    move-object v0, p1

    .line 43
    :goto_1c
    goto :goto_28

    .line 39
    :catch_1d
    move-exception p1

    .line 41
    new-array p1, v2, [Ljava/lang/String;

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u60a8\u96c6\u6210OAID SDK\u5305"

    aput-object v2, p1, v1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 42
    nop

    .line 44
    :goto_28
    return-object v0
.end method
