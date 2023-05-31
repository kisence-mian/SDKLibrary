.class Ltds/androidx/core/view/ViewCompat$CompatImplApi28;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatImplApi28"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3098
    return-void
.end method

.method static addOnUnhandledKeyEventListener(Landroid/view/View;Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 3104
    nop

    .line 3106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tds_common_tag_unhandled_key_listeners"

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/collection/SimpleArrayMap;

    .line 3107
    .local v0, "viewListeners":Ltds/androidx/collection/SimpleArrayMap;, "Ltds/androidx/collection/SimpleArrayMap<Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;Landroid/view/View$OnUnhandledKeyEventListener;>;"
    if-nez v0, :cond_24

    .line 3108
    new-instance v2, Ltds/androidx/collection/SimpleArrayMap;

    invoke-direct {v2}, Ltds/androidx/collection/SimpleArrayMap;-><init>()V

    move-object v0, v2

    .line 3109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3112
    :cond_24
    new-instance v1, Ltds/androidx/core/view/ViewCompat$CompatImplApi28$1;

    invoke-direct {v1, p1}, Ltds/androidx/core/view/ViewCompat$CompatImplApi28$1;-><init>(Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 3119
    .local v1, "fwListener":Landroid/view/View$OnUnhandledKeyEventListener;
    invoke-virtual {v0, p1, v1}, Ltds/androidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 3121
    return-void
.end method

.method static removeOnUnhandledKeyEventListener(Landroid/view/View;Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 3127
    nop

    .line 3129
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tds_common_tag_unhandled_key_listeners"

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/collection/SimpleArrayMap;

    .line 3130
    .local v0, "viewListeners":Ltds/androidx/collection/SimpleArrayMap;, "Ltds/androidx/collection/SimpleArrayMap<Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;Landroid/view/View$OnUnhandledKeyEventListener;>;"
    if-nez v0, :cond_14

    .line 3131
    return-void

    .line 3133
    :cond_14
    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnUnhandledKeyEventListener;

    .line 3134
    .local v1, "fwListener":Landroid/view/View$OnUnhandledKeyEventListener;
    if-eqz v1, :cond_1f

    .line 3135
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 3137
    :cond_1f
    return-void
.end method
