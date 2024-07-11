.class Lcom/bytedance/sdk/openadsdk/h/d$a;
.super Ljava/lang/Object;
.source "TTNetClient.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/d;
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
    .registers 5

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    .line 130
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Ljava/lang/String;

    .line 131
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    .line 132
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:I

    .line 134
    if-eqz p1, :cond_13

    .line 135
    const p3, 0x413c0901

    invoke-virtual {p1, p3, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 137
    :cond_13
    return-void
.end method

.method private c()Z
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 185
    const v2, 0x413c0901

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 188
    :cond_18
    return v1
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 147
    return-void

    .line 149
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 150
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    if-eqz v0, :cond_2e

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :cond_2e
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .registers 3

    .line 158
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 159
    return-void

    .line 161
    :cond_1b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_34

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d$a;->c()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 162
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 163
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    :cond_34
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 142
    return-void
.end method

.method public b()V
    .registers 2

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    .line 171
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 176
    return-void

    .line 178
    :cond_1b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_30

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:I

    if-eqz p1, :cond_30

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d$a;->c()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 179
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :cond_30
    return-void
.end method
