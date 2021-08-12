.class final Lcom/anythink/network/toutiao/TTATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/anythink/network/toutiao/TTATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;II)V
    .registers 6

    .line 88
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->b:Ljava/util/Map;

    iput p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->c:I

    iput p5, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 6

    .line 91
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->e:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->b:Ljava/util/Map;

    iget v3, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->c:I

    iget v4, p0, Lcom/anythink/network/toutiao/TTATAdapter$1;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;II)V

    .line 92
    return-void
.end method
