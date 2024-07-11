.class public Lcom/umeng/commonsdk/a;
.super Ljava/lang/Object;
.source "UMInnerManager.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/a;->a:Ljava/lang/Class;

    .line 14
    sput-object v0, Lcom/umeng/commonsdk/a;->b:Ljava/lang/reflect/Method;

    .line 18
    :try_start_5
    const-string v0, "com.umeng.commonsdk.UMInnerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_21

    .line 20
    sput-object v0, Lcom/umeng/commonsdk/a;->a:Ljava/lang/Class;

    .line 21
    const-string v1, "initAndSendInternal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_21

    .line 23
    sput-object v0, Lcom/umeng/commonsdk/a;->b:Ljava/lang/reflect/Method;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    .line 29
    :cond_21
    goto :goto_23

    .line 27
    :catchall_22
    move-exception v0

    .line 30
    :goto_23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 33
    if-eqz p0, :cond_23

    .line 34
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 35
    sget v0, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/a;->a:Ljava/lang/Class;

    if-eqz v0, :cond_23

    sget-object v2, Lcom/umeng/commonsdk/a;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_23

    .line 39
    :try_start_15
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_1f

    .line 40
    :catchall_1e
    move-exception p0

    .line 42
    :goto_1f
    goto :goto_23

    .line 46
    :cond_20
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureInternation;->sendInternal(Landroid/content/Context;)V

    .line 50
    :cond_23
    :goto_23
    return-void
.end method
