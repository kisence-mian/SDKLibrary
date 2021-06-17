.class public final Landroidx/fragment/lint/FragmentTagDetector;
.super Lcom/android/tools/lint/detector/api/ResourceXmlDetector;
.source "FragmentTagDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/lint/FragmentTagDetector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/fragment/lint/FragmentTagDetector;",
        "Lcom/android/tools/lint/detector/api/ResourceXmlDetector;",
        "()V",
        "appliesTo",
        "",
        "folderType",
        "Lcom/android/resources/ResourceFolderType;",
        "getApplicableElements",
        "",
        "",
        "visitElement",
        "",
        "context",
        "Lcom/android/tools/lint/detector/api/XmlContext;",
        "element",
        "Lorg/w3c/dom/Element;",
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
.field public static final Companion:Landroidx/fragment/lint/FragmentTagDetector$Companion;

.field private static final ISSUE:Lcom/android/tools/lint/detector/api/Issue;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Landroidx/fragment/lint/FragmentTagDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/lint/FragmentTagDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/fragment/lint/FragmentTagDetector;->Companion:Landroidx/fragment/lint/FragmentTagDetector$Companion;

    .line 39
    nop

    .line 53
    nop

    .line 39
    sget-object v2, Lcom/android/tools/lint/detector/api/Issue;->Companion:Lcom/android/tools/lint/detector/api/Issue$Companion;

    .line 40
    nop

    .line 41
    nop

    .line 42
    nop

    .line 47
    sget-object v8, Lcom/android/tools/lint/detector/api/Category;->CORRECTNESS:Lcom/android/tools/lint/detector/api/Category;

    .line 48
    sget-object v10, Lcom/android/tools/lint/detector/api/Severity;->WARNING:Lcom/android/tools/lint/detector/api/Severity;

    .line 49
    new-instance v6, Lcom/android/tools/lint/detector/api/Implementation;

    .line 50
    const-class v0, Landroidx/fragment/lint/FragmentTagDetector;

    sget-object v1, Lcom/android/tools/lint/detector/api/Scope;->RESOURCE_FILE_SCOPE:Ljava/util/EnumSet;

    .line 49
    invoke-direct {v6, v0, v1}, Lcom/android/tools/lint/detector/api/Implementation;-><init>(Ljava/lang/Class;Ljava/util/EnumSet;)V

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 39
    const-string v3, "FragmentTagUsage"

    const-string v4, "Use FragmentContainerView instead of the <fragment> tag"

    const-string v5, "FragmentContainerView replaces the <fragment> tag as the preferred way\n                | of adding fragments via XML. Unlike the <fragment> tag, FragmentContainerView uses\n                | a normal `FragmentTransaction` under the hood to add the initial fragment,\n                | allowing further FragmentTransaction operations on the FragmentContainerView\n                | and providing a consistent timing for lifecycle events."

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xd50

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lcom/android/tools/lint/detector/api/Issue$Companion;->create$default(Lcom/android/tools/lint/detector/api/Issue$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/lint/detector/api/Implementation;Ljava/lang/String;Lcom/android/tools/lint/detector/api/Category;ILcom/android/tools/lint/detector/api/Severity;ZLjava/lang/Boolean;Ljava/util/EnumSet;Ljava/util/Collection;ILjava/lang/Object;)Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v0

    .line 54
    nop

    .line 53
    const-string v1, "https://developer.android.com/reference/androidx/fragment/app/FragmentContainerView.html"

    invoke-virtual {v0, v1}, Lcom/android/tools/lint/detector/api/Issue;->addMoreInfo(Ljava/lang/String;)Lcom/android/tools/lint/detector/api/Issue;

    move-result-object v0

    sput-object v0, Landroidx/fragment/lint/FragmentTagDetector;->ISSUE:Lcom/android/tools/lint/detector/api/Issue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/android/tools/lint/detector/api/ResourceXmlDetector;-><init>()V

    return-void
.end method

.method public static final synthetic access$getISSUE$cp()Lcom/android/tools/lint/detector/api/Issue;
    .registers 1

    .line 36
    sget-object v0, Landroidx/fragment/lint/FragmentTagDetector;->ISSUE:Lcom/android/tools/lint/detector/api/Issue;

    return-object v0
.end method


# virtual methods
.method public appliesTo(Lcom/android/resources/ResourceFolderType;)Z
    .registers 3
    .param p1, "folderType"    # Lcom/android/resources/ResourceFolderType;

    const-string v0, "folderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/android/resources/ResourceFolderType;->LAYOUT:Lcom/android/resources/ResourceFolderType;

    if-ne p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getApplicableElements()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    const-string v0, "fragment"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public visitElement(Lcom/android/tools/lint/detector/api/XmlContext;Lorg/w3c/dom/Element;)V
    .registers 7
    .param p1, "context"    # Lcom/android/tools/lint/detector/api/XmlContext;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Landroidx/fragment/lint/FragmentTagDetector;->ISSUE:Lcom/android/tools/lint/detector/api/Issue;

    move-object v1, p2

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-virtual {p1, v1}, Lcom/android/tools/lint/detector/api/XmlContext;->getNameLocation(Lorg/w3c/dom/Node;)Lcom/android/tools/lint/detector/api/Location;

    move-result-object v1

    .line 67
    nop

    .line 68
    nop

    .line 71
    nop

    .line 68
    nop

    .line 71
    nop

    .line 68
    nop

    .line 70
    nop

    .line 68
    nop

    .line 69
    nop

    .line 68
    invoke-static {}, Lcom/android/tools/lint/detector/api/LintFix;->create()Lcom/android/tools/lint/detector/api/LintFix$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/android/tools/lint/detector/api/LintFix$Builder;->replace()Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;

    move-result-object v2

    .line 70
    const-string v3, "fragment"

    invoke-virtual {v2, v3}, Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;->text(Ljava/lang/String;)Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;

    move-result-object v2

    .line 71
    const-string v3, "androidx.fragment.app.FragmentContainerView"

    invoke-virtual {v2, v3}, Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;->with(Ljava/lang/String;)Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/lint/detector/api/LintFix$ReplaceStringBuilder;->build()Lcom/android/tools/lint/detector/api/LintFix;

    move-result-object v2

    .line 66
    const-string v3, "Replace the <fragment> tag with FragmentContainerView."

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/tools/lint/detector/api/XmlContext;->report(Lcom/android/tools/lint/detector/api/Issue;Lcom/android/tools/lint/detector/api/Location;Ljava/lang/String;Lcom/android/tools/lint/detector/api/LintFix;)V

    .line 72
    return-void
.end method
