.class public Lcom/ksad/lottie/model/content/MergePaths;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/MergePaths;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/MergePaths;->b:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    return-void
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/MergePaths;->b:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method

.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/ksad/lottie/f;->c()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "Animation contains merge paths but they are disabled."

    invoke-static {v0}, Lcom/ksad/lottie/c;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/ksad/lottie/n/a/k;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/n/a/k;-><init>(Lcom/ksad/lottie/model/content/MergePaths;)V

    goto :goto_c
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/MergePaths;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/MergePaths;->b:Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
