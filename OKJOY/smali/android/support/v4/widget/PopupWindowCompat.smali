.class public final Landroid/support/v4/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"

.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;

.field private static sOverlapAnchorFieldAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 5
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_c

    .line 120
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result v1

    .line 140
    :goto_b
    return v1

    .line 122
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4a

    .line 123
    sget-boolean v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v1, :cond_28

    .line 125
    :try_start_16
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "mOverlapAnchor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 126
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_26} :catch_39

    .line 130
    :goto_26
    sput-boolean v3, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    .line 132
    :cond_28
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_4a

    .line 134
    :try_start_2c
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_37} :catch_42

    move-result v1

    goto :goto_b

    .line 127
    :catch_39
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 135
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_42
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not get overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_4a
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 6
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_d

    .line 184
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result v0

    .line 204
    :goto_c
    return v0

    .line 187
    :cond_d
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_26

    .line 189
    :try_start_11
    const-class v0, Landroid/widget/PopupWindow;

    const-string v2, "getWindowLayoutType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 191
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_3d

    .line 195
    :goto_24
    sput-boolean v4, Landroid/support/v4/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 197
    :cond_26
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3b

    .line 199
    :try_start_2a
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_3a

    move-result v0

    goto :goto_c

    .line 200
    :catch_3a
    move-exception v0

    :cond_3b
    move v0, v1

    .line 204
    goto :goto_c

    .line 192
    :catch_3d
    move-exception v0

    goto :goto_24
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 6
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "overlapAnchor"    # Z

    .prologue
    const/4 v3, 0x1

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_b

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 110
    :cond_a
    :goto_a
    return-void

    .line 92
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_a

    .line 93
    sget-boolean v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    if-nez v1, :cond_27

    .line 95
    :try_start_15
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "mOverlapAnchor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 96
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_25} :catch_3e

    .line 100
    :goto_25
    sput-boolean v3, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorFieldAttempted:Z

    .line 102
    :cond_27
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_a

    .line 104
    :try_start_2b
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompat;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_34} :catch_35

    goto :goto_a

    .line 105
    :catch_35
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not set overlap anchor field in PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 97
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 8
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "layoutType"    # I

    .prologue
    const/4 v5, 0x1

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 175
    :cond_a
    :goto_a
    return-void

    .line 158
    :cond_b
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_29

    .line 160
    :try_start_f
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 162
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_3f

    .line 166
    :goto_27
    sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 168
    :cond_29
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a

    .line 170
    :try_start_2d
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_3d

    goto :goto_a

    .line 171
    :catch_3d
    move-exception v0

    goto :goto_a

    .line 163
    :catch_3f
    move-exception v0

    goto :goto_27
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 9
    .param p0, "popup"    # Landroid/widget/PopupWindow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_a

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 81
    :goto_9
    return-void

    .line 71
    :cond_a
    move v1, p2

    .line 73
    .local v1, "xoff1":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 72
    invoke-static {p4, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v0, v2, 0x7

    .line 74
    .local v0, "hgrav":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_22

    .line 77
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 79
    :cond_22
    invoke-virtual {p0, p1, v1, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_9
.end method
