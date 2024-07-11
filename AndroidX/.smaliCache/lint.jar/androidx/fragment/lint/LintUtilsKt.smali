.class public final Landroidx/fragment/lint/LintUtilsKt;
.super Ljava/lang/Object;
.source "LintUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a(\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0001H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "extends",
        "",
        "Lcom/intellij/psi/PsiType;",
        "context",
        "Lcom/android/tools/lint/detector/api/JavaContext;",
        "superName",
        "",
        "strict",
        "fragment-lint"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final extends(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "$this$extends"    # Lcom/intellij/psi/PsiType;
    .param p1, "context"    # Lcom/android/tools/lint/detector/api/JavaContext;
    .param p2, "superName"    # Ljava/lang/String;
    .param p3, "strict"    # Z

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/lint/detector/api/JavaContext;->getEvaluator()Lcom/android/tools/lint/client/api/JavaEvaluator;

    move-result-object v0

    invoke-static {p0}, Lcom/intellij/psi/util/PsiTypesUtil;->getPsiClass(Lcom/intellij/psi/PsiType;)Lcom/intellij/psi/PsiClass;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/tools/lint/client/api/JavaEvaluator;->extendsClass(Lcom/intellij/psi/PsiClass;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic extends$default(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    .line 33
    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Landroidx/fragment/lint/LintUtilsKt;->extends(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
