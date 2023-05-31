.class final Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "MultiCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/MultiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallbackWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/graphics/drawable/Drawable$Callback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 2
    .param p1, "r"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 126
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_5

    .line 137
    .end local p1    # "o":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 133
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 134
    goto :goto_4

    .line 137
    :cond_13
    invoke-virtual {p0}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast p1, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lpl/droidsonroids/gif/MultiCallback$CallbackWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 143
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method
