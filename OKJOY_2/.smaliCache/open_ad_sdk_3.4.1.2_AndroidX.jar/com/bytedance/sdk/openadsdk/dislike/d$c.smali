.class Lcom/bytedance/sdk/openadsdk/dislike/d$c;
.super Ljava/lang/Object;
.source "TTDislikeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/dislike/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/d;

.field private b:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/d;Lcom/bytedance/sdk/openadsdk/FilterWord;I)V
    .registers 4

    .line 344
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->b:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 346
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->c:I

    .line 347
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 351
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->c:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->b:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/d$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 352
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->b:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/d;->c(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V

    .line 355
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$c;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->dismiss()V

    .line 356
    return-void
.end method
