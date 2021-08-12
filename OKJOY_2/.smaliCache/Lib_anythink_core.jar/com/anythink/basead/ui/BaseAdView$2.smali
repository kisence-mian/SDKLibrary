.class final Lcom/anythink/basead/ui/BaseAdView$2;
.super Lcom/anythink/basead/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseAdView;->a(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/anythink/basead/ui/BaseAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseAdView;Ljava/lang/Runnable;)V
    .registers 3

    .line 142
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseAdView$2;->b:Lcom/anythink/basead/ui/BaseAdView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseAdView$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/basead/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView$2;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 146
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 148
    :cond_7
    return-void
.end method
