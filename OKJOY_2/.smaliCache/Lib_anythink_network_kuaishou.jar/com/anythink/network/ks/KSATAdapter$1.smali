.class final Lcom/anythink/network/ks/KSATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/ks/KSATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/anythink/network/ks/KSATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 7

    .line 77
    iput-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$1;->f:Lcom/anythink/network/ks/KSATAdapter;

    iput-object p2, p0, Lcom/anythink/network/ks/KSATAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/anythink/network/ks/KSATAdapter$1;->c:Z

    iput-object p5, p0, Lcom/anythink/network/ks/KSATAdapter$1;->d:Ljava/lang/String;

    iput p6, p0, Lcom/anythink/network/ks/KSATAdapter$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$1;->f:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/network/ks/KSATAdapter$1;->c:Z

    iget-object v4, p0, Lcom/anythink/network/ks/KSATAdapter$1;->d:Ljava/lang/String;

    iget v5, p0, Lcom/anythink/network/ks/KSATAdapter$1;->e:I

    invoke-static/range {v0 .. v5}, Lcom/anythink/network/ks/KSATAdapter;->a(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 81
    return-void
.end method
