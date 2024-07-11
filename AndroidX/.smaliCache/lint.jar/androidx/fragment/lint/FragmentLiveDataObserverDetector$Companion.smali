.class public final Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;
.super Ljava/lang/Object;
.source "FragmentLiveDataObserverDetector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/lint/FragmentLiveDataObserverDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;",
        "",
        "()V",
        "ISSUE",
        "Lcom/android/tools/lint/detector/api/Issue;",
        "getISSUE",
        "()Lcom/android/tools/lint/detector/api/Issue;",
        "fragment-lint"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 42
    invoke-direct {p0}, Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getISSUE()Lcom/android/tools/lint/detector/api/Issue;
    .registers 2

    .line 43
    # getter for: Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->ISSUE:Lcom/android/tools/lint/detector/api/Issue;
    invoke-static {}, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->access$getISSUE$cp()Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v0

    return-object v0
.end method
