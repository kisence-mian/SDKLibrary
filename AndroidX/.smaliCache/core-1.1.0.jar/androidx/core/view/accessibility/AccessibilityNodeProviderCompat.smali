.class public Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;,
        Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    }
.end annotation


# static fields
.field public static final HOST_VIEW_ID:I = -0x1


# instance fields
.field private final mProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11

    .line 106
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_22

    .line 107
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1f

    .line 108
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_22

    .line 110
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 112
    :goto_22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 122
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "virtualViewId"    # I

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "focus"    # I

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Ljava/lang/Object;
    .registers 2

    .line 128
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 172
    const/4 v0, 0x0

    return v0
.end method
