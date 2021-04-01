.class final Lcom/anythink/nativead/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/a/b;->a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/anythink/nativead/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/b;Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 42
    iput-object p1, p0, Lcom/anythink/nativead/a/b$1;->c:Lcom/anythink/nativead/a/b;

    iput-object p2, p0, Lcom/anythink/nativead/a/b$1;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/anythink/nativead/a/b$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 7

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anythink/nativead/a/b$1;->c:Lcom/anythink/nativead/a/b;

    iget-wide v2, p0, Lcom/anythink/nativead/a/b$1;->b:J

    invoke-static {v0, v2, v3, p1, p2}, Lcom/anythink/nativead/a/b;->a(Lcom/anythink/nativead/a/b;JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 51
    return-void
.end method

.method public final onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/anythink/nativead/a/b$1;->c:Lcom/anythink/nativead/a/b;

    iget-object v1, p0, Lcom/anythink/nativead/a/b$1;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/anythink/nativead/a/b$1;->b:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/anythink/nativead/a/b;->a(Lcom/anythink/nativead/a/b;Landroid/content/Context;JLcom/anythink/core/b/a/b;Ljava/util/List;)V

    .line 46
    return-void
.end method
