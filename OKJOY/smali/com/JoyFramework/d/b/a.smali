.class public Lcom/JoyFramework/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/b/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Timer;

.field private static b:Lcom/JoyFramework/d/b/a$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 33
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/b/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 34
    sget-object v0, Lcom/JoyFramework/d/b/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/d/b/a;->a:Ljava/util/Timer;

    .line 37
    :cond_c
    sget-object v0, Lcom/JoyFramework/d/b/a;->b:Lcom/JoyFramework/d/b/a$a;

    if-eqz v0, :cond_18

    .line 38
    sget-object v0, Lcom/JoyFramework/d/b/a;->b:Lcom/JoyFramework/d/b/a$a;

    invoke-virtual {v0}, Lcom/JoyFramework/d/b/a$a;->cancel()Z

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/d/b/a;->b:Lcom/JoyFramework/d/b/a$a;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 44
    :cond_18
    :goto_18
    return-void

    .line 41
    :catch_19
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public static a(I)V
    .registers 7

    .prologue
    .line 20
    :try_start_0
    sget-object v0, Lcom/JoyFramework/d/b/a;->a:Ljava/util/Timer;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/JoyFramework/d/b/a;->a:Ljava/util/Timer;

    .line 22
    :cond_b
    sget-object v0, Lcom/JoyFramework/d/b/a;->b:Lcom/JoyFramework/d/b/a$a;

    if-nez v0, :cond_17

    .line 23
    new-instance v0, Lcom/JoyFramework/d/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/JoyFramework/d/b/a$a;-><init>(Lcom/JoyFramework/d/b/b;)V

    sput-object v0, Lcom/JoyFramework/d/b/a;->b:Lcom/JoyFramework/d/b/a$a;

    .line 24
    :cond_17
    sget-object v0, Lcom/JoyFramework/d/b/a;->a:Ljava/util/Timer;

    sget-object v1, Lcom/JoyFramework/d/b/a;->b:Lcom/JoyFramework/d/b/a$a;

    const-wide/16 v2, 0x0

    mul-int/lit8 v4, p0, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 29
    :goto_25
    return-void

    .line 26
    :catch_26
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method
