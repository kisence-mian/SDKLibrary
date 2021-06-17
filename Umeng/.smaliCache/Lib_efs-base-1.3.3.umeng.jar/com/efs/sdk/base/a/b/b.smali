.class public final Lcom/efs/sdk/base/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Byte;",
            "Lcom/efs/sdk/base/a/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(B)Lcom/efs/sdk/base/a/b/e;
    .registers 5

    .line 24
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 25
    packed-switch p1, :pswitch_data_4a

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cache module not support protocol "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    const/4 v1, 0x0

    const-string v2, "efs.cache"

    invoke-static {v2, v0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 27
    :pswitch_20
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/efs/sdk/base/a/b/d;

    invoke-direct {v2}, Lcom/efs/sdk/base/a/b/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_3d

    .line 30
    :pswitch_2f
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-instance v2, Lcom/efs/sdk/base/a/b/g;

    invoke-direct {v2}, Lcom/efs/sdk/base/a/b/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/efs/sdk/base/a/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/efs/sdk/base/a/b/e;

    return-object p1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method
