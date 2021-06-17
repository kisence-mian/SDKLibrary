.class public Lcom/umeng/analytics/CoreProtocol;
.super Ljava/lang/Object;
.source "CoreProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;
.implements Lcom/umeng/commonsdk/framework/UMSenderStateNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/CoreProtocol$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/CoreProtocol$1;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/umeng/analytics/CoreProtocol;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;
    .registers 2

    .line 28
    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 29
    if-eqz p0, :cond_c

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    .line 33
    :cond_c
    invoke-static {}, Lcom/umeng/analytics/CoreProtocol$a;->a()Lcom/umeng/analytics/CoreProtocol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onConnectionAvailable()V
    .registers 2

    .line 54
    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n;->a()V

    .line 55
    return-void
.end method

.method public onSenderIdle()V
    .registers 2

    .line 59
    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/n;->b()V

    .line 60
    return-void
.end method

.method public removeCacheData(Ljava/lang/Object;)V
    .registers 3

    .line 44
    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .registers 4

    .line 49
    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/pro/n;->a(J)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .registers 4

    .line 38
    sget-object v0, Lcom/umeng/analytics/CoreProtocol;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/pro/n;->a(Ljava/lang/Object;I)V

    .line 40
    return-void
.end method
