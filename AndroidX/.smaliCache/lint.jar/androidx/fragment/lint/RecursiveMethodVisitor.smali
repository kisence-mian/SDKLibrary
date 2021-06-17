.class final Landroidx/fragment/lint/RecursiveMethodVisitor;
.super Lorg/jetbrains/uast/visitor/AbstractUastVisitor;
.source "FragmentLiveDataObserverDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentLiveDataObserverDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentLiveDataObserverDetector.kt\nandroidx/fragment/lint/RecursiveMethodVisitor\n*L\n1#1,166:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/fragment/lint/RecursiveMethodVisitor;",
        "Lorg/jetbrains/uast/visitor/AbstractUastVisitor;",
        "context",
        "Lcom/android/tools/lint/detector/api/JavaContext;",
        "originFragmentName",
        "",
        "lifecycleMethod",
        "(Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;Ljava/lang/String;)V",
        "visitedMethods",
        "",
        "Lorg/jetbrains/uast/UCallExpression;",
        "visitCallExpression",
        "",
        "node",
        "fragment-lint"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final context:Lcom/android/tools/lint/detector/api/JavaContext;

.field private final lifecycleMethod:Ljava/lang/String;

.field private final originFragmentName:Ljava/lang/String;

.field private final visitedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jetbrains/uast/UCallExpression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Lcom/android/tools/lint/detector/api/JavaContext;
    .param p2, "originFragmentName"    # Ljava/lang/String;
    .param p3, "lifecycleMethod"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleMethod"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    nop

    .line 89
    invoke-direct {p0}, Lorg/jetbrains/uast/visitor/AbstractUastVisitor;-><init>()V

    iput-object p1, p0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    iput-object p2, p0, Landroidx/fragment/lint/RecursiveMethodVisitor;->originFragmentName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/fragment/lint/RecursiveMethodVisitor;->lifecycleMethod:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/fragment/lint/RecursiveMethodVisitor;->visitedMethods:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public visitCallExpression(Lorg/jetbrains/uast/UCallExpression;)Z
    .registers 19
    .param p1, "node"    # Lorg/jetbrains/uast/UCallExpression;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "node"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v2, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->visitedMethods:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 94
    invoke-super/range {p0 .. p1}, Lorg/jetbrains/uast/visitor/AbstractUastVisitor;->visitCallExpression(Lorg/jetbrains/uast/UCallExpression;)Z

    move-result v2

    return v2

    .line 96
    :cond_16
    iget-object v2, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    invoke-static {v1, v2}, Landroidx/fragment/lint/FragmentLiveDataObserverDetectorKt;->isLiveDataObserve(Lorg/jetbrains/uast/UCallExpression;Lcom/android/tools/lint/detector/api/JavaContext;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 97
    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/uast/UCallExpression;->getValueArguments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jetbrains/uast/UExpression;

    .line 98
    .local v2, "lifecycleOwner":Lorg/jetbrains/uast/UExpression;
    invoke-interface {v2}, Lorg/jetbrains/uast/UExpression;->getExpressionType()Lcom/intellij/psi/PsiType;

    move-result-object v3

    invoke-static {v3}, Lcom/intellij/psi/util/PsiTypesUtil;->getPsiClass(Lcom/intellij/psi/PsiType;)Lcom/intellij/psi/PsiClass;

    move-result-object v3

    .line 99
    .local v3, "lifecycleOwnerType":Lcom/intellij/psi/PsiClass;
    invoke-interface {v2}, Lorg/jetbrains/uast/UExpression;->getExpressionType()Lcom/intellij/psi/PsiType;

    move-result-object v4

    iget-object v5, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "androidx.fragment.app.Fragment"

    invoke-static/range {v4 .. v9}, Landroidx/fragment/lint/LintUtilsKt;->extends$default(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 100
    move-object v4, v1

    check-cast v4, Lorg/jetbrains/uast/UElement;

    invoke-static {v4}, Lorg/jetbrains/uast/UastUtils;->getContainingUClass(Lorg/jetbrains/uast/UElement;)Lorg/jetbrains/uast/UClass;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-interface {v4}, Lorg/jetbrains/uast/UClass;->getJavaPsi()Lcom/intellij/psi/PsiClass;

    move-result-object v4

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    :goto_51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 101
    iget-object v4, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    invoke-virtual {v4}, Lcom/android/tools/lint/detector/api/JavaContext;->getPsiFile()Lcom/intellij/psi/PsiFile;

    move-result-object v4

    check-cast v4, Lcom/intellij/psi/PsiElement;

    invoke-static {v4}, Lcom/android/tools/lint/detector/api/Lint;->isKotlin(Lcom/intellij/psi/PsiElement;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 102
    const-string v4, "viewLifecycleOwner"

    goto :goto_6a

    .line 104
    :cond_68
    const-string v4, "getViewLifecycleOwner()"

    .line 101
    :goto_6a
    nop

    .line 106
    .local v4, "methodFix":Ljava/lang/String;
    iget-object v5, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    sget-object v6, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->Companion:Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;

    invoke-virtual {v6}, Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;->getISSUE()Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v6

    iget-object v7, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    move-object v8, v2

    check-cast v8, Lorg/jetbrains/uast/UElement;

    invoke-virtual {v7, v8}, Lcom/android/tools/lint/detector/api/JavaContext;->getLocation(Lorg/jetbrains/uast/UElement;)Lcom/android/tools/lint/detector/api/Location;

    move-result-object v7

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as the LifecycleOwner."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    nop

    .line 111
    nop

    .line 108
    nop

    .line 110
    nop

    .line 108
    nop

    .line 109
    nop

    .line 108
    invoke-static {}, Lcom/android/tools/lint/detector/api/LintFix;->create()Lcom/android/tools/lint/detector/api/LintFix$Builder;

    move-result-object v9

    .line 109
    invoke-virtual {v9}, Lcom/android/tools/lint/detector/api/LintFix$Builder;->replace()Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;

    move-result-object v9

    .line 110
    invoke-virtual {v9, v4}, Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;->with(Ljava/lang/String;)Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;

    move-result-object v9

    .line 111
    invoke-virtual {v9}, Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;->build()Lcom/android/tools/lint/detector/api/LintFix;

    move-result-object v9

    .line 106
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/tools/lint/detector/api/JavaContext;->report(Lcom/android/tools/lint/detector/api/Issue;Lcom/android/tools/lint/detector/api/Location;Ljava/lang/String;Lcom/android/tools/lint/detector/api/LintFix;)V

    .end local v4    # "methodFix":Ljava/lang/String;
    goto :goto_122

    .line 113
    :cond_af
    iget-object v10, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    sget-object v4, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->Companion:Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;

    invoke-virtual {v4}, Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;->getISSUE()Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v11

    iget-object v4, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    move-object v5, v1

    check-cast v5, Lorg/jetbrains/uast/UElement;

    invoke-virtual {v4, v5}, Lcom/android/tools/lint/detector/api/JavaContext;->getLocation(Lorg/jetbrains/uast/UElement;)Lcom/android/tools/lint/detector/api/Location;

    move-result-object v12

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsafe call to observe with Fragment instance from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->originFragmentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 115
    iget-object v6, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->lifecycleMethod:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    .line 113
    invoke-static/range {v10 .. v16}, Lcom/android/tools/lint/detector/api/Context;->report$default(Lcom/android/tools/lint/detector/api/Context;Lcom/android/tools/lint/detector/api/Issue;Lcom/android/tools/lint/detector/api/Location;Ljava/lang/String;Lcom/android/tools/lint/detector/api/LintFix;ILjava/lang/Object;)V

    .line 116
    .end local v2    # "lifecycleOwner":Lorg/jetbrains/uast/UExpression;
    .end local v3    # "lifecycleOwnerType":Lcom/intellij/psi/PsiClass;
    goto :goto_122

    .line 118
    :cond_ee
    iget-object v2, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    invoke-static {v1, v2}, Landroidx/fragment/lint/FragmentLiveDataObserverDetectorKt;->isInteresting(Lorg/jetbrains/uast/UCallExpression;Lcom/android/tools/lint/detector/api/JavaContext;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 119
    iget-object v2, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->visitedMethods:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface/range {p1 .. p1}, Lorg/jetbrains/uast/UCallExpression;->resolve()Lcom/intellij/psi/PsiMethod;

    move-result-object v2

    if-eqz v2, :cond_11d

    .line 121
    .local v2, "psiMethod":Lcom/intellij/psi/PsiMethod;
    iget-object v3, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->context:Lcom/android/tools/lint/detector/api/JavaContext;

    invoke-virtual {v3}, Lcom/android/tools/lint/detector/api/JavaContext;->getUastContext()Lorg/jetbrains/uast/UastContext;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jetbrains/uast/UastContext;->getMethod(Lcom/intellij/psi/PsiMethod;)Lorg/jetbrains/uast/UMethod;

    move-result-object v3

    .line 122
    .local v3, "uastNode":Lorg/jetbrains/uast/UMethod;
    invoke-interface {v3}, Lorg/jetbrains/uast/UMethod;->getUastBody()Lorg/jetbrains/uast/UExpression;

    move-result-object v4

    if-eqz v4, :cond_117

    move-object v5, v0

    check-cast v5, Lorg/jetbrains/uast/visitor/UastVisitor;

    invoke-interface {v4, v5}, Lorg/jetbrains/uast/UExpression;->accept(Lorg/jetbrains/uast/visitor/UastVisitor;)V

    .line 123
    :cond_117
    iget-object v4, v0, Landroidx/fragment/lint/RecursiveMethodVisitor;->visitedMethods:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_122

    .line 120
    .end local v2    # "psiMethod":Lcom/intellij/psi/PsiMethod;
    .end local v3    # "uastNode":Lorg/jetbrains/uast/UMethod;
    :cond_11d
    invoke-super/range {p0 .. p1}, Lorg/jetbrains/uast/visitor/AbstractUastVisitor;->visitCallExpression(Lorg/jetbrains/uast/UCallExpression;)Z

    move-result v2

    return v2

    .line 124
    :cond_122
    :goto_122
    nop

    .line 125
    invoke-super/range {p0 .. p1}, Lorg/jetbrains/uast/visitor/AbstractUastVisitor;->visitCallExpression(Lorg/jetbrains/uast/UCallExpression;)Z

    move-result v2

    return v2
.end method
