.class public final Landroidx/fragment/lint/FragmentLiveDataObserverDetectorKt;
.super Ljava/lang/Object;
.source "FragmentLiveDataObserverDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentLiveDataObserverDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentLiveDataObserverDetector.kt\nandroidx/fragment/lint/FragmentLiveDataObserverDetectorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,166:1\n1587#2,2:167\n*E\n*S KotlinDebug\n*F\n+ 1 FragmentLiveDataObserverDetector.kt\nandroidx/fragment/lint/FragmentLiveDataObserverDetectorKt\n*L\n142#1,2:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0014\u0010\u0007\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "FRAGMENT_CLASS",
        "",
        "isInteresting",
        "",
        "Lorg/jetbrains/uast/UCallExpression;",
        "context",
        "Lcom/android/tools/lint/detector/api/JavaContext;",
        "isLiveDataObserve",
        "fragment-lint"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final FRAGMENT_CLASS:Ljava/lang/String; = "androidx.fragment.app.Fragment"


# direct methods
.method public static final isInteresting(Lorg/jetbrains/uast/UCallExpression;Lcom/android/tools/lint/detector/api/JavaContext;)Z
    .registers 15
    .param p0, "$this$isInteresting"    # Lorg/jetbrains/uast/UCallExpression;
    .param p1, "context"    # Lcom/android/tools/lint/detector/api/JavaContext;

    const-string v0, "$this$isInteresting"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-interface {p0}, Lorg/jetbrains/uast/UCallExpression;->getReceiverType()Lcom/intellij/psi/PsiType;

    move-result-object v0

    invoke-static {v0}, Lcom/intellij/psi/util/PsiTypesUtil;->getPsiClass(Lcom/intellij/psi/PsiType;)Lcom/intellij/psi/PsiClass;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lorg/jetbrains/uast/UElement;

    invoke-static {v1}, Lorg/jetbrains/uast/UastUtils;->getContainingUClass(Lorg/jetbrains/uast/UElement;)Lorg/jetbrains/uast/UClass;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Lorg/jetbrains/uast/UClass;->getJavaPsi()Lcom/intellij/psi/PsiClass;

    move-result-object v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 139
    return v1

    .line 141
    :cond_29
    invoke-interface {p0}, Lorg/jetbrains/uast/UCallExpression;->getValueArgumentCount()I

    move-result v0

    if-lez v0, :cond_5b

    .line 142
    invoke-interface {p0}, Lorg/jetbrains/uast/UCallExpression;->getValueArguments()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 167
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/jetbrains/uast/UExpression;

    .local v5, "it":Lorg/jetbrains/uast/UExpression;
    const/4 v6, 0x0

    .line 143
    .local v6, "$i$a$-forEach-FragmentLiveDataObserverDetectorKt$isInteresting$1":I
    invoke-interface {v5}, Lorg/jetbrains/uast/UExpression;->getExpressionType()Lcom/intellij/psi/PsiType;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v9, "androidx.fragment.app.Fragment"

    move-object v8, p1

    invoke-static/range {v7 .. v12}, Landroidx/fragment/lint/LintUtilsKt;->extends$default(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 144
    return v1

    .line 146
    .end local v5    # "it":Lorg/jetbrains/uast/UExpression;
    .end local v6    # "$i$a$-forEach-FragmentLiveDataObserverDetectorKt$isInteresting$1":I
    :cond_59
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_3a

    .line 148
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :cond_5b
    const/4 v0, 0x0

    return v0
.end method

.method public static final isLiveDataObserve(Lorg/jetbrains/uast/UCallExpression;Lcom/android/tools/lint/detector/api/JavaContext;)Z
    .registers 13
    .param p0, "$this$isLiveDataObserve"    # Lorg/jetbrains/uast/UCallExpression;
    .param p1, "context"    # Lcom/android/tools/lint/detector/api/JavaContext;

    const-string v0, "$this$isLiveDataObserve"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    nop

    .line 156
    nop

    .line 157
    invoke-interface {p0}, Lorg/jetbrains/uast/UCallExpression;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "observe"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_7e

    .line 156
    invoke-interface {p0}, Lorg/jetbrains/uast/UCallExpression;->getReceiverType()Lcom/intellij/psi/PsiType;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "androidx.lifecycle.LiveData"

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Landroidx/fragment/lint/LintUtilsKt;->extends$default(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p0}, Lorg/jetbrains/uast/UCallExpression;->getValueArgumentCount()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_33

    goto :goto_7e

    .line 160
    :cond_33
    invoke-interface {p0}, Lorg/jetbrains/uast/UCallExpression;->resolve()Lcom/intellij/psi/PsiMethod;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lcom/intellij/psi/PsiMethod;->getParameterList()Lcom/intellij/psi/PsiParameterList;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Lcom/intellij/psi/PsiParameterList;->getParameters()[Lcom/intellij/psi/PsiParameter;

    move-result-object v0

    if-eqz v0, :cond_7d

    const-string v3, "resolve()?.parameterList\u2026arameters ?: return false"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .local v0, "psiParameters":[Lcom/intellij/psi/PsiParameter;
    nop

    .line 162
    nop

    .line 161
    aget-object v3, v0, v2

    const-string v4, "psiParameters[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/intellij/psi/PsiParameter;->getType()Lcom/intellij/psi/PsiType;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "androidx.lifecycle.LifecycleOwner"

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Landroidx/fragment/lint/LintUtilsKt;->extends$default(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 162
    aget-object v3, v0, v1

    const-string v4, "psiParameters[1]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/intellij/psi/PsiParameter;->getType()Lcom/intellij/psi/PsiType;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "androidx.lifecycle.Observer"

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Landroidx/fragment/lint/LintUtilsKt;->extends$default(Lcom/intellij/psi/PsiType;Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    :goto_7c
    return v1

    .line 160
    .end local v0    # "psiParameters":[Lcom/intellij/psi/PsiParameter;
    :cond_7d
    return v2

    .line 158
    :cond_7e
    :goto_7e
    return v2
.end method
