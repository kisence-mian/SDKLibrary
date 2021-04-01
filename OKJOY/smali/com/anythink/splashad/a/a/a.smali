.class public final Lcom/anythink/splashad/a/a/a;
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

.method public static a(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Ljava/util/Map;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v7

    new-instance v0, Lcom/anythink/splashad/a/a/a$1;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anythink/splashad/a/a/a$1;-><init>(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V

    invoke-virtual {v7, v0}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method
