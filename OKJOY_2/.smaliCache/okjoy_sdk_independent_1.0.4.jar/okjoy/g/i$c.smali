.class public Lokjoy/g/i$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/g/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/g/i;


# direct methods
.method public constructor <init>(Lokjoy/g/i;)V
    .registers 2

    iput-object p1, p0, Lokjoy/g/i$c;->a:Lokjoy/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lokjoy/g/i$c;->a:Lokjoy/g/i;

    .line 1
    iget-object v0, v0, Lokjoy/g/i;->e:Landroid/widget/Button;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Button;->getX()F

    move-result v0

    iget-object v1, p0, Lokjoy/g/i$c;->a:Lokjoy/g/i;

    .line 3
    iget-object v1, v1, Lokjoy/g/i;->e:Landroid/widget/Button;

    .line 4
    invoke-virtual {v1}, Landroid/widget/Button;->getY()F

    move-result v1

    iget-object v2, p0, Lokjoy/g/i$c;->a:Lokjoy/g/i;

    .line 5
    iget-object v2, v2, Lokjoy/g/i;->e:Landroid/widget/Button;

    .line 6
    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    iget-object v3, p0, Lokjoy/g/i$c;->a:Lokjoy/g/i;

    .line 7
    iget-object v3, v3, Lokjoy/g/i;->e:Landroid/widget/Button;

    .line 8
    invoke-virtual {v3}, Landroid/widget/Button;->getHeight()I

    move-result v3

    iget-object v4, p0, Lokjoy/g/i$c;->a:Lokjoy/g/i;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    div-float/2addr v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v4

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OkJoyMainLoginFragment helpButton\uff1ax = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff0cy = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0cwidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0cheight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method
