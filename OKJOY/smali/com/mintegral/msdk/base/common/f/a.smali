.class public abstract Lcom/mintegral/msdk/base/common/f/a;
.super Ljava/lang/Object;
.source "CommonTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/common/f/a$b;,
        Lcom/mintegral/msdk/base/common/f/a$a;
    }
.end annotation


# static fields
.field public static h:J


# instance fields
.field public i:I

.field public j:Lcom/mintegral/msdk/base/common/f/a$b;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->a:I

    iput v0, p0, Lcom/mintegral/msdk/base/common/f/a;->i:I

    .line 35
    sget-wide v0, Lcom/mintegral/msdk/base/common/f/a;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/mintegral/msdk/base/common/f/a;->h:J

    .line 36
    return-void
.end method

.method private a(I)V
    .registers 3

    .prologue
    .line 70
    iput p1, p0, Lcom/mintegral/msdk/base/common/f/a;->i:I

    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/a;->j:Lcom/mintegral/msdk/base/common/f/a$b;

    if-eqz v0, :cond_b

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/a;->j:Lcom/mintegral/msdk/base/common/f/a$b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/base/common/f/a$b;->a(I)V

    .line 74
    :cond_b
    return-void
.end method

.method public static c()J
    .registers 2

    .prologue
    .line 39
    sget-wide v0, Lcom/mintegral/msdk/base/common/f/a;->h:J

    return-wide v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 47
    iget v0, p0, Lcom/mintegral/msdk/base/common/f/a;->i:I

    sget v1, Lcom/mintegral/msdk/base/common/f/a$a;->d:I

    if-eq v0, v1, :cond_e

    .line 48
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->d:I

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/f/a;->a(I)V

    .line 49
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/f/a;->b()V

    .line 51
    :cond_e
    return-void
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 24
    :try_start_0
    iget v0, p0, Lcom/mintegral/msdk/base/common/f/a;->i:I

    sget v1, Lcom/mintegral/msdk/base/common/f/a$a;->a:I

    if-ne v0, v1, :cond_13

    .line 25
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->b:I

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/f/a;->a(I)V

    .line 26
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/common/f/a;->a()V

    .line 27
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/common/f/a;->a(I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    .line 32
    :cond_13
    :goto_13
    return-void

    .line 30
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13
.end method
