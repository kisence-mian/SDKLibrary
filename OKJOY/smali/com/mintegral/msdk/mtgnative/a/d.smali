.class public final Lcom/mintegral/msdk/mtgnative/a/d;
.super Lcom/mintegral/msdk/mtgnative/a/b;
.source "FaceBookCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/mtgnative/a/b",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/mintegral/msdk/out/Campaign;",
        ">;>;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/a/d;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 9
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    .line 2015
    sget-object v0, Lcom/mintegral/msdk/mtgnative/a/d;->a:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/mintegral/msdk/mtgnative/a/d;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 9
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/mtgnative/a/d;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgnative/a/d;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 46
    :goto_5
    return-void

    .line 44
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 1026
    sget-object v0, Lcom/mintegral/msdk/mtgnative/a/d;->a:Ljava/util/Map;

    invoke-static {p1, v0, p2}, Lcom/mintegral/msdk/mtgnative/a/d;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/util/List;

    move-result-object v0

    .line 9
    return-object v0
.end method
