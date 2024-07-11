.class public abstract Lcom/tapjoy/internal/hm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/hm$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/tapjoy/internal/hm$a;

.field private static b:Lcom/tapjoy/internal/hm;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tapjoy/internal/hm;)V
    .registers 4

    .line 31
    const-class v0, Lcom/tapjoy/internal/hm;

    monitor-enter v0

    .line 32
    :try_start_3
    sput-object p0, Lcom/tapjoy/internal/hm;->b:Lcom/tapjoy/internal/hm;

    .line 33
    sget-object v1, Lcom/tapjoy/internal/hm;->a:Lcom/tapjoy/internal/hm$a;

    .line 34
    if-eqz v1, :cond_f

    .line 35
    const/4 v2, 0x0

    sput-object v2, Lcom/tapjoy/internal/hm;->a:Lcom/tapjoy/internal/hm$a;

    .line 36
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/hm;->a(Lcom/tapjoy/internal/hm$a;)V

    .line 38
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 42
    const-class v0, Lcom/tapjoy/internal/hm;

    monitor-enter v0

    .line 43
    :try_start_3
    new-instance v1, Lcom/tapjoy/internal/hm$a;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hm$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object p0, Lcom/tapjoy/internal/hm;->b:Lcom/tapjoy/internal/hm;

    if-eqz p0, :cond_13

    .line 45
    const/4 p1, 0x0

    sput-object p1, Lcom/tapjoy/internal/hm;->a:Lcom/tapjoy/internal/hm$a;

    .line 46
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/hm;->a(Lcom/tapjoy/internal/hm$a;)V

    goto :goto_15

    .line 48
    :cond_13
    sput-object v1, Lcom/tapjoy/internal/hm;->a:Lcom/tapjoy/internal/hm$a;

    .line 50
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public static c()Z
    .registers 2

    .line 54
    sget-object v0, Lcom/tapjoy/internal/hm;->b:Lcom/tapjoy/internal/hm;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tapjoy/internal/hm;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    return v1

    .line 57
    :cond_c
    sget-object v0, Lcom/tapjoy/internal/hm;->a:Lcom/tapjoy/internal/hm$a;

    .line 58
    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/tapjoy/internal/hm$a;->d:Lcom/tapjoy/internal/fj;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fj;->a()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract a(Lcom/tapjoy/internal/hm$a;)V
.end method

.method protected abstract b()Z
.end method
