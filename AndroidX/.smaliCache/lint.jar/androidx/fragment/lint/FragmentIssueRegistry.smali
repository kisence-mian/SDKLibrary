.class public final Landroidx/fragment/lint/FragmentIssueRegistry;
.super Lcom/android/tools/lint/client/api/IssueRegistry;
.source "FragmentIssueRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/fragment/lint/FragmentIssueRegistry;",
        "Lcom/android/tools/lint/client/api/IssueRegistry;",
        "()V",
        "api",
        "",
        "getApi",
        "()I",
        "issues",
        "",
        "Lcom/android/tools/lint/detector/api/Issue;",
        "getIssues",
        "()Ljava/util/List;",
        "minApi",
        "getMinApi",
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
.field private final api:I

.field private final minApi:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/android/tools/lint/client/api/IssueRegistry;-><init>()V

    .line 27
    const/4 v0, 0x6

    iput v0, p0, Landroidx/fragment/lint/FragmentIssueRegistry;->api:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/lint/FragmentIssueRegistry;->minApi:I

    return-void
.end method


# virtual methods
.method public getApi()I
    .registers 2

    .line 27
    iget v0, p0, Landroidx/fragment/lint/FragmentIssueRegistry;->api:I

    return v0
.end method

.method public getIssues()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/lint/detector/api/Issue;",
            ">;"
        }
    .end annotation

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/tools/lint/detector/api/Issue;

    .line 30
    sget-object v1, Landroidx/fragment/lint/FragmentLiveDataObserverDetector;->Companion:Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;

    invoke-virtual {v1}, Landroidx/fragment/lint/FragmentLiveDataObserverDetector$Companion;->getISSUE()Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    sget-object v1, Landroidx/fragment/lint/FragmentTagDetector;->Companion:Landroidx/fragment/lint/FragmentTagDetector$Companion;

    invoke-virtual {v1}, Landroidx/fragment/lint/FragmentTagDetector$Companion;->getISSUE()Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public getMinApi()I
    .registers 2

    .line 28
    iget v0, p0, Landroidx/fragment/lint/FragmentIssueRegistry;->minApi:I

    return v0
.end method
