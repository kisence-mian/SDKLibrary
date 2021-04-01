.class public final Lcom/qq/e/comm/managers/plugin/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/managers/plugin/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/qq/e/comm/managers/plugin/PM$a$b;

.field private d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".*plugin\\.dex-(\\d+)\\.jar.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/plugin/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/plugin/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/qq/e/comm/managers/plugin/b;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/qq/e/comm/managers/plugin/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/qq/e/comm/managers/plugin/b;)Lcom/qq/e/comm/managers/plugin/PM$a$b;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/plugin/b;->c:Lcom/qq/e/comm/managers/plugin/PM$a$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/qq/e/comm/managers/plugin/PM$a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/comm/managers/plugin/b;->c:Lcom/qq/e/comm/managers/plugin/PM$a$b;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const-string v0, "0"

    sget-object v3, Lcom/qq/e/comm/managers/plugin/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_21
    invoke-static {v0, v1}, Lcom/qq/e/comm/util/StringUtil;->parseInteger(Ljava/lang/String;I)I

    move-result v3

    const/16 v0, 0x416

    if-ge v3, v0, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "online plugin version is smaller than asset plugin version"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",1046"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".download give up"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    move v0, v1

    :goto_48
    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAP_BEFORE_OWN_PLUGIN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/qq/e/comm/net/rr/PlainRequest;

    sget-object v1, Lcom/qq/e/comm/net/rr/Request$Method;->GET:Lcom/qq/e/comm/net/rr/Request$Method;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/qq/e/comm/net/rr/PlainRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->getInstance()Lcom/qq/e/comm/net/NetworkClient;

    move-result-object v1

    sget-object v2, Lcom/qq/e/comm/net/NetworkClient$Priority;->High:Lcom/qq/e/comm/net/NetworkClient$Priority;

    new-instance v4, Lcom/qq/e/comm/managers/plugin/b$a;

    invoke-direct {v4, p0, p1, v3}, Lcom/qq/e/comm/managers/plugin/b$a;-><init>(Lcom/qq/e/comm/managers/plugin/b;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/qq/e/comm/managers/plugin/b;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/qq/e/comm/net/NetworkClient;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;Lcom/qq/e/comm/net/NetworkCallBack;Ljava/util/concurrent/Executor;)V

    goto :goto_e

    :cond_79
    move v0, v2

    goto :goto_48
.end method
