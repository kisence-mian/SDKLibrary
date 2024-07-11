.class public final Landroidx/fragment/lint/FragmentLiveDataObserverDetector;
.super Lcom/android/tools/lint/detector/api/Detector;
.source "FragmentLiveDataObserverDetector.kt"

# interfaces
.implements Lcom/android/tools/lint/detector/api/SourceCodeScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentLiveDataObserverDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentLiveDataObserverDetector.kt\nandroidx/fragment/lint/FragmentLiveDataObserverDetector\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,166:1\n10894#2,2:167\n*E\n*S KotlinDebug\n*F\n+ 1 FragmentLiveDataObserverDetector.kt\nandroidx/fragment/lint/FragmentLiveDataObserverDetector\n*L\n68#1,2:167\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u00012\u00020\u0002:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/fragment/lint/FragmentLiveDataObserverDetector;",
        "Lcom/android/tools/lint/detector/api/Detector;",
        "Lcom/android/tools/lint/detector/api/SourceCodeScanner;",
        "()V",
        "lifecycleMethods",
        "",
        "",
        "applicableSuperClasses",
        "",
        "visitClass",
        "",
        "context",
        "Lcom/android/tools/lint/detector/api/JavaContext;",
        "declaration",
        "Lorg/jetbrains/uast/UClass;",
        "Companion",
        "fragment-lint"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;

.field private static final ISSUE:Lcom/android/tools/lint/detector/api/Issue;


# instance fields
.field private final lifecycleMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->Companion:Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;

    .line 43
    sget-object v2, Lcom/android/tools/lint/detector/api/Issue;->Companion:Lcom/android/tools/lint/detector/api/Issue$Companion;

    .line 44
    nop

    .line 45
    nop

    .line 47
    nop

    .line 53
    sget-object v8, Lcom/android/tools/lint/detector/api/Category;->CORRECTNESS:Lcom/android/tools/lint/detector/api/Category;

    .line 54
    sget-object v10, Lcom/android/tools/lint/detector/api/Severity;->ERROR:Lcom/android/tools/lint/detector/api/Severity;

    .line 55
    new-instance v6, Lcom/android/tools/lint/detector/api/Implementation;

    .line 56
    const-class v0, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;

    sget-object v1, Lcom/android/tools/lint/detector/api/Scope;->JAVA_FILE_SCOPE:Ljava/util/EnumSet;

    .line 55
    invoke-direct {v6, v0, v1}, Lcom/android/tools/lint/detector/api/Implementation;-><init>(Ljava/lang/Class;Ljava/util/EnumSet;)V

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 43
    const-string v3, "FragmentLiveDataObserve"

    const-string v4, "Use getViewLifecycleOwner() as the LifecycleOwner instead of a Fragment instance when observing a LiveData object."

    const-string v5, "When observing a LiveData object from a fragment\'s onCreateView,\n                | onViewCreated, onActivityCreated, or onViewStateRestored method\n                | getViewLifecycleOwner() should be used as the LifecycleOwner rather than the\n                | Fragment instance. The Fragment lifecycle can result in the Fragment being\n                | active longer than its view. This can lead to unexpected behavior from\n                | LiveData objects being observed longer than the Fragment\'s view is active."

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xd50

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lcom/android/tools/lint/detector/api/Issue$Companion;->create$default(Lcom/android/tools/lint/detector/api/Issue$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/lint/detector/api/Implementation;Ljava/lang/String;Lcom/android/tools/lint/detector/api/Category;ILcom/android/tools/lint/detector/api/Severity;ZLjava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/Collection;ILjava/lang/Object;)Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v0

    sput-object v0, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->ISSUE:Lcom/android/tools/lint/detector/api/Issue;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/android/tools/lint/detector/api/Detector;-><init>()V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "onCreateView"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onViewCreated"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "onActivityCreated"

    aput-object v2, v0, v1

    .line 63
    const/4 v1, 0x3

    const-string v2, "onViewStateRestored"

    aput-object v2, v0, v1

    .line 62
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->lifecycleMethods:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getISSUE$cp()Lcom/android/tools/lint/detector/api/Issue;
    .registers 1

    .line 40
    sget-object v0, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->ISSUE:Lcom/android/tools/lint/detector/api/Issue;

    return-object v0
.end method


# virtual methods
.method public applicableSuperClasses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    const-string v0, "androidx.fragment.app.Fragment"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public visitClass(Lcom/android/tools/lint/detector/api/JavaContext;Lorg/jetbrains/uast/UClass;)V
    .registers 13
    .param p1, "context"    # Lcom/android/tools/lint/detector/api/JavaContext;
    .param p2, "declaration"    # Lorg/jetbrains/uast/UClass;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p2}, Lorg/jetbrains/uast/UClass;->getMethods()[Lorg/jetbrains/uast/UMethod;

    move-result-object v0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 167
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_40

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lorg/jetbrains/uast/UMethod;
    const/4 v6, 0x0

    .line 69
    .local v6, "$i$a$-forEach-FragmentLiveDataObserverDetector$visitClass$1":I
    iget-object v7, p0, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->lifecycleMethods:Ljava/util/Set;

    invoke-interface {v5}, Lorg/jetbrains/uast/UMethod;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 70
    new-instance v7, Landroidx/fragment/lint/RecursiveMethodVisitor;

    invoke-interface {p2}, Lorg/jetbrains/uast/UClass;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lorg/jetbrains/uast/UMethod;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p1, v8, v9}, Landroidx/fragment/lint/RecursiveMethodVisitor;-><init>(Lcom/android/tools/lint/detector/api/JavaContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v7, "visitor":Landroidx/fragment/lint/RecursiveMethodVisitor;
    invoke-interface {v5}, Lorg/jetbrains/uast/UMethod;->getUastBody()Lorg/jetbrains/uast/UExpression;

    move-result-object v8

    if-eqz v8, :cond_3c

    move-object v9, v7

    check-cast v9, Lorg/jetbrains/uast/visitor/UastVisitor;

    invoke-interface {v8, v9}, Lorg/jetbrains/uast/UExpression;->accept(Lorg/jetbrains/uast/visitor/UastVisitor;)V

    .line 73
    .end local v7    # "visitor":Landroidx/fragment/lint/RecursiveMethodVisitor;
    :cond_3c
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lorg/jetbrains/uast/UMethod;
    .end local v6    # "$i$a$-forEach-FragmentLiveDataObserverDetector$visitClass$1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 168
    :cond_40
    nop

    .line 74
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
