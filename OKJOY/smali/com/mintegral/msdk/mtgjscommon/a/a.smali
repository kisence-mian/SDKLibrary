.class public final Lcom/mintegral/msdk/mtgjscommon/a/a;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgjscommon/a/a$c;,
        Lcom/mintegral/msdk/mtgjscommon/a/a$d;,
        Lcom/mintegral/msdk/mtgjscommon/a/a$a;,
        Lcom/mintegral/msdk/mtgjscommon/a/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/mintegral/msdk/mtgjscommon/a/a$a;


# direct methods
.method public static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/mintegral/msdk/mtgjscommon/a/a$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mintegral/msdk/mtgjscommon/a/a$c",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;
        }
    .end annotation

    .prologue
    .line 293
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/a/a$c;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/a/a$c;-><init>(Ljava/lang/Class;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 296
    :goto_9
    return-object v0

    .line 294
    :catch_a
    move-exception v0

    .line 295
    new-instance v1, Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/mintegral/msdk/mtgjscommon/a/a;->b(Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;)V

    .line 296
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/a/a$c;-><init>(Ljava/lang/Class;)V

    goto :goto_9
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {p0}, Lcom/mintegral/msdk/mtgjscommon/a/a;->b(Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;)V

    return-void
.end method

.method private static b(Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;
        }
    .end annotation

    .prologue
    .line 301
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/a/a;->a:Lcom/mintegral/msdk/mtgjscommon/a/a$a;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/a/a;->a:Lcom/mintegral/msdk/mtgjscommon/a/a$a;

    invoke-interface {v0}, Lcom/mintegral/msdk/mtgjscommon/a/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    throw p0

    .line 302
    :cond_d
    return-void
.end method
