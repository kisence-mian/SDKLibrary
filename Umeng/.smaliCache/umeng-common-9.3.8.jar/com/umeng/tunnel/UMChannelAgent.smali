.class public Lcom/umeng/tunnel/UMChannelAgent;
.super Ljava/lang/Object;
.source "UMChannelAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UMChannelAgent"

.field private static final UMENG_VCHANNEL:Ljava/lang/String; = "com.umeng.commonsdk.vchannel.Sender"

.field private static vChannelReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/tunnel/UMChannelAgent;->vChannelReady:Z

    .line 22
    :try_start_3
    const-string v0, "com.umeng.commonsdk.vchannel.Sender"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_e

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/tunnel/UMChannelAgent;->vChannelReady:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    .line 28
    :cond_e
    goto :goto_10

    .line 26
    :catchall_f
    move-exception v0

    .line 29
    :goto_10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()Z
    .registers 2

    .line 77
    sget-boolean v0, Lcom/umeng/tunnel/UMChannelAgent;->vChannelReady:Z

    if-nez v0, :cond_b

    .line 78
    const-string v0, "UMChannelAgent"

    const-string v1, "--->>> Umeng tunnel module depends on common library, please integrate common first."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_b
    sget-boolean v0, Lcom/umeng/tunnel/UMChannelAgent;->vChannelReady:Z

    return v0
.end method

.method public static onDebugEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-static {p0, p1, p2}, Lcom/umeng/tunnel/UMChannelAgent;->reflectOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method private static reflectOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    const-string v0, "UMChannelAgent"

    :try_start_2
    const-string v1, "com.umeng.commonsdk.vchannel.Sender"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    const-string v2, "onEvent"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/util/Map;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 42
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2c} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2c} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2c} :catch_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    goto :goto_48

    .line 49
    :catch_2d
    move-exception p0

    .line 50
    const-string p0, "--->>> Exception is thrown when onEvent method is called !"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 47
    :catch_34
    move-exception p0

    .line 48
    const-string p0, "--->>> Security exception is thrown when we find onEvent method !"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 45
    :catch_3b
    move-exception p0

    .line 46
    const-string p0, "--->>> Can not find method onEvent ."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 43
    :catch_42
    move-exception p0

    .line 44
    const-string p0, "--->>> Can not find class com.umeng.commonsdk.vchannel.sender ."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_48
    nop

    .line 52
    :goto_49
    return-void
.end method

.method private static reflectSetCustomHeader(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    const-string v0, "UMChannelAgent"

    :try_start_2
    const-string v1, "com.umeng.commonsdk.vchannel.Sender"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    const-string v2, "setCustomHeader"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_1e} :catch_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1e} :catch_2d
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1e} :catch_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_3a

    .line 65
    :catch_1f
    move-exception p0

    .line 66
    const-string p0, "--->>> Exception is thrown when setCustomHeader method is called !"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 63
    :catch_26
    move-exception p0

    .line 64
    const-string p0, "--->>> Security exception is thrown when we find setCustomHeader method !"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 61
    :catch_2d
    move-exception p0

    .line 62
    const-string p0, "--->>> Can not find method setCustomHeader ."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 59
    :catch_34
    move-exception p0

    .line 60
    const-string p0, "--->>> Can not find class com.umeng.commonsdk.vchannel.sender ."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_3a
    nop

    .line 68
    :goto_3b
    return-void
.end method

.method public static setCustomHeader(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/umeng/tunnel/UMChannelAgent;->reflectSetCustomHeader(Ljava/util/Map;)V

    .line 85
    return-void
.end method
