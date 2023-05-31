.class public final Lcom/anythink/banner/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static a(Lcom/anythink/core/c/c$b;)Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
    .registers 2

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/banner/a/a/b;->a(Ljava/lang/String;)Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 35
    :goto_6
    return-object v0

    .line 32
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Ljava/util/Map;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/banner/api/ATBannerView;",
            "Landroid/content/Context;",
            "Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/banner/unitgroup/api/CustomBannerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v6

    new-instance v0, Lcom/anythink/banner/a/a/a$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/banner/a/a/a$1;-><init>(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V

    invoke-virtual {v6, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
