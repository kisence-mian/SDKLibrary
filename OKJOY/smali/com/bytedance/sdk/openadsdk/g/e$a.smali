.class Lcom/bytedance/sdk/openadsdk/g/e$a;
.super Ljava/lang/Object;
.source "TTNetClient.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .registers 7

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    .line 132
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->b:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->c:I

    .line 134
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->d:I

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 139
    :cond_17
    return-void
.end method

.method private c()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    .line 187
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    const v2, 0x413c0901

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    .line 190
    :cond_19
    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 156
    :cond_1c
    :goto_1c
    return-void

    .line 151
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 152
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->c:I

    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 168
    :cond_1c
    :goto_1c
    return-void

    .line 163
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1c
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    .line 173
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 183
    :cond_1c
    :goto_1c
    return-void

    .line 180
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->d:I

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/g/e$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c
.end method
