.class public final Lcom/mintegral/msdk/mtgjscommon/a/a$d;
.super Ljava/lang/Object;
.source "Hack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgjscommon/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    if-nez p1, :cond_9

    .line 210
    iput-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/a/a$d;->a:Ljava/lang/reflect/Method;

    :goto_8
    return-void

    .line 201
    :cond_9
    :try_start_9
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 204
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_11} :catch_14
    .catchall {:try_start_9 .. :try_end_11} :catchall_26

    .line 210
    iput-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/a/a$d;->a:Ljava/lang/reflect/Method;

    goto :goto_8

    .line 205
    :catch_14
    move-exception v0

    .line 206
    :try_start_15
    new-instance v2, Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;

    invoke-direct {v2, v0}, Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;-><init>(Ljava/lang/Exception;)V

    .line 207
    invoke-virtual {v2, p1}, Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;->a(Ljava/lang/Class;)V

    .line 208
    invoke-virtual {v2, p2}, Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;->a(Ljava/lang/String;)V

    .line 209
    invoke-static {v2}, Lcom/mintegral/msdk/mtgjscommon/a/a;->a(Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_26

    .line 210
    iput-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/a/a$d;->a:Ljava/lang/reflect/Method;

    goto :goto_8

    :catchall_26
    move-exception v0

    iput-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/a/a$d;->a:Ljava/lang/reflect/Method;

    throw v0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/a/a$d;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 194
    :goto_6
    return-object v0

    .line 192
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 194
    const/4 v0, 0x0

    goto :goto_6
.end method
