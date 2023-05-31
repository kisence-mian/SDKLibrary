.class final Lcom/mintegral/msdk/mtgbanner/common/c/a$1;
.super Ljava/lang/Object;
.source "BannerLoadManager.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgbanner/common/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgbanner/common/a/b;

.field final synthetic b:Lcom/mintegral/msdk/mtgbanner/common/c/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgbanner/common/c/a;Lcom/mintegral/msdk/mtgbanner/common/a/b;)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$1;->b:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$1;->a:Lcom/mintegral/msdk/mtgbanner/common/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 109
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v1

    monitor-enter v1

    .line 111
    :try_start_5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$1;->a:Lcom/mintegral/msdk/mtgbanner/common/a/b;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->a(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a$1;->b:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v0
.end method
