.class Ltds/androidx/core/view/WindowInsetsCompat$Impl20;
.super Ltds/androidx/core/view/WindowInsetsCompat$Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# static fields
.field private static sAttachInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sAttachInfoField:Ljava/lang/reflect/Field;

.field private static sGetViewRootImplMethod:Ljava/lang/reflect/Method;

.field private static sViewRootImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sVisibleInsetsField:Ljava/lang/reflect/Field;

.field private static sVisibleRectReflectionFetched:Z


# instance fields
.field final mPlatformInsets:Landroid/view/WindowInsets;

.field private mRootViewVisibleInsets:Ltds/androidx/core/graphics/Insets;

.field private mRootWindowInsets:Ltds/androidx/core/view/WindowInsetsCompat;

.field private mSystemWindowInsets:Ltds/androidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 872
    const/4 v0, 0x0

    sput-boolean v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 4
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 889
    invoke-direct {p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Ltds/androidx/core/graphics/Insets;

    .line 890
    iput-object p2, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 891
    return-void
.end method

.method constructor <init>(Ltds/androidx/core/view/WindowInsetsCompat;Ltds/androidx/core/view/WindowInsetsCompat$Impl20;)V
    .registers 5
    .param p1, "host"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Ltds/androidx/core/view/WindowInsetsCompat$Impl20;

    .line 894
    new-instance v0, Landroid/view/WindowInsets;

    iget-object v1, p2, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-direct {v0, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    .line 895
    return-void
.end method

.method private getInsets(IZ)Ltds/androidx/core/graphics/Insets;
    .registers 6
    .param p1, "typeMask"    # I
    .param p2, "ignoreVisibility"    # Z

    .line 931
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    .line 932
    .local v0, "result":Ltds/androidx/core/graphics/Insets;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3
    const/16 v2, 0x100

    if-gt v1, v2, :cond_17

    .line 933
    and-int v2, p1, v1

    if-nez v2, :cond_c

    .line 934
    goto :goto_14

    .line 936
    :cond_c
    invoke-virtual {p0, v1, p2}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Ltds/androidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v0, v2}, Ltds/androidx/core/graphics/Insets;->max(Ltds/androidx/core/graphics/Insets;Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    .line 932
    :goto_14
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 938
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method private getRootStableInsets()Ltds/androidx/core/graphics/Insets;
    .registers 2

    .line 1087
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_9

    .line 1088
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1090
    :cond_9
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method private getVisibleInsets(Landroid/view/View;)Ltds/androidx/core/graphics/Insets;
    .registers 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 1111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_52

    .line 1116
    sget-boolean v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    if-nez v0, :cond_d

    .line 1117
    invoke-static {}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->loadReflectionField()V

    .line 1120
    :cond_d
    sget-object v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    sget-object v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    if-eqz v2, :cond_51

    sget-object v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1b

    goto :goto_51

    .line 1127
    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1128
    .local v0, "viewRootImpl":Ljava/lang/Object;
    if-nez v0, :cond_31

    .line 1129
    const-string v2, "WindowInsetsCompat"

    const-string v3, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    return-object v1

    .line 1135
    :cond_31
    sget-object v2, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1136
    .local v2, "mAttachInfo":Ljava/lang/Object;
    sget-object v3, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1137
    .local v3, "visibleRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_45

    invoke-static {v3}, Ltds/androidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Ltds/androidx/core/graphics/Insets;

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_45} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_45} :catch_46

    :cond_45
    return-object v1

    .line 1141
    .end local v0    # "viewRootImpl":Ljava/lang/Object;
    .end local v2    # "mAttachInfo":Ljava/lang/Object;
    .end local v3    # "visibleRect":Landroid/graphics/Rect;
    :catch_46
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    goto :goto_50

    .line 1139
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4b
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    .line 1143
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 1144
    :goto_50
    return-object v1

    .line 1123
    :cond_51
    :goto_51
    return-object v1

    .line 1112
    :cond_52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadReflectionField()V
    .registers 4

    .line 1150
    const/4 v0, 0x1

    :try_start_1
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    .line 1151
    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sViewRootImplClass:Ljava/lang/Class;

    .line 1152
    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    .line 1153
    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    .line 1154
    sget-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sViewRootImplClass:Ljava/lang/Class;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    .line 1155
    sget-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1156
    sget-object v1, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_3a} :catch_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_3a} :catch_40
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_3a} :catch_3b

    goto :goto_49

    .line 1161
    :catch_3b
    move-exception v1

    .line 1162
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    goto :goto_4a

    .line 1159
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_40
    move-exception v1

    .line 1160
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_49

    .line 1157
    :catch_45
    move-exception v1

    .line 1158
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->logReflectionError(Ljava/lang/Exception;)V

    .line 1163
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_49
    nop

    .line 1164
    :goto_4a
    sput-boolean v0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    .line 1165
    return-void
.end method

.method private static logReflectionError(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowInsetsCompat"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    return-void
.end method


# virtual methods
.method copyRootViewBounds(Landroid/view/View;)V
    .registers 3
    .param p1, "rootView"    # Landroid/view/View;

    .line 1096
    invoke-direct {p0, p1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getVisibleInsets(Landroid/view/View;)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    .line 1097
    .local v0, "visibleInsets":Ltds/androidx/core/graphics/Insets;
    if-nez v0, :cond_8

    .line 1098
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    .line 1100
    :cond_8
    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->setRootViewData(Ltds/androidx/core/graphics/Insets;)V

    .line 1101
    return-void
.end method

.method copyWindowDataInto(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 3
    .param p1, "other"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1071
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-virtual {p1, v0}, Ltds/androidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 1072
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Ltds/androidx/core/graphics/Insets;

    invoke-virtual {p1, v0}, Ltds/androidx/core/view/WindowInsetsCompat;->setRootViewData(Ltds/androidx/core/graphics/Insets;)V

    .line 1073
    return-void
.end method

.method public getInsets(I)Ltds/androidx/core/graphics/Insets;
    .registers 3
    .param p1, "typeMask"    # I

    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method protected getInsetsForType(IZ)Ltds/androidx/core/graphics/Insets;
    .registers 10
    .param p1, "type"    # I
    .param p2, "ignoreVisibility"    # Z

    .line 943
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_de

    .line 1027
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0

    .line 1016
    :sswitch_7
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_10

    .line 1017
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    goto :goto_14

    .line 1018
    :cond_10
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getDisplayCutout()Ltds/androidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    :goto_14
    nop

    .line 1019
    .local v0, "cutout":Ltds/androidx/core/view/DisplayCutoutCompat;
    if-eqz v0, :cond_2c

    .line 1020
    invoke-virtual {v0}, Ltds/androidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Ltds/androidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v2

    .line 1021
    invoke-virtual {v0}, Ltds/androidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {v0}, Ltds/androidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result v4

    .line 1020
    invoke-static {v1, v2, v3, v4}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 1023
    :cond_2c
    sget-object v1, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v1

    .line 1012
    .end local v0    # "cutout":Ltds/androidx/core/view/DisplayCutoutCompat;
    :sswitch_2f
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getTappableElementInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1008
    :sswitch_34
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getMandatorySystemGestureInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1004
    :sswitch_39
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getSystemGestureInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 985
    :sswitch_3e
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    .line 986
    .local v1, "systemWindow":Ltds/androidx/core/graphics/Insets;
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v2

    .line 988
    .local v2, "rootStable":Ltds/androidx/core/graphics/Insets;
    iget v3, v1, Ltds/androidx/core/graphics/Insets;->bottom:I

    iget v4, v2, Ltds/androidx/core/graphics/Insets;->bottom:I

    if-le v3, v4, :cond_53

    .line 991
    iget v3, v1, Ltds/androidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v0, v0, v3}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 992
    :cond_53
    iget-object v3, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Ltds/androidx/core/graphics/Insets;

    if-eqz v3, :cond_70

    sget-object v4, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    .line 993
    invoke-virtual {v3, v4}, Ltds/androidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 996
    iget-object v3, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Ltds/androidx/core/graphics/Insets;

    iget v3, v3, Ltds/androidx/core/graphics/Insets;->bottom:I

    iget v4, v2, Ltds/androidx/core/graphics/Insets;->bottom:I

    if-le v3, v4, :cond_70

    .line 997
    iget-object v3, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Ltds/androidx/core/graphics/Insets;

    iget v3, v3, Ltds/androidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v0, v0, v3}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_70
    sget-object v0, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    return-object v0

    .line 954
    .end local v1    # "systemWindow":Ltds/androidx/core/graphics/Insets;
    .end local v2    # "rootStable":Ltds/androidx/core/graphics/Insets;
    :sswitch_73
    if-eqz p2, :cond_9a

    .line 955
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    .line 956
    .local v1, "rootStable":Ltds/androidx/core/graphics/Insets;
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v2

    .line 957
    .local v2, "stable":Ltds/androidx/core/graphics/Insets;
    iget v3, v1, Ltds/androidx/core/graphics/Insets;->left:I

    iget v4, v2, Ltds/androidx/core/graphics/Insets;->left:I

    .line 958
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v1, Ltds/androidx/core/graphics/Insets;->right:I

    iget v5, v2, Ltds/androidx/core/graphics/Insets;->right:I

    .line 960
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v1, Ltds/androidx/core/graphics/Insets;->bottom:I

    iget v6, v2, Ltds/androidx/core/graphics/Insets;->bottom:I

    .line 961
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 957
    invoke-static {v3, v0, v4, v5}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 964
    .end local v1    # "rootStable":Ltds/androidx/core/graphics/Insets;
    .end local v2    # "stable":Ltds/androidx/core/graphics/Insets;
    :cond_9a
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    .line 965
    .local v1, "systemWindow":Ltds/androidx/core/graphics/Insets;
    iget-object v2, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    if-eqz v2, :cond_a7

    .line 966
    invoke-virtual {v2}, Ltds/androidx/core/view/WindowInsetsCompat;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v2

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    .line 969
    .local v2, "rootStable":Ltds/androidx/core/graphics/Insets;
    :goto_a8
    iget v3, v1, Ltds/androidx/core/graphics/Insets;->bottom:I

    .line 970
    .local v3, "bottom":I
    if-eqz v2, :cond_b2

    .line 974
    iget v4, v2, Ltds/androidx/core/graphics/Insets;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 976
    :cond_b2
    iget v4, v1, Ltds/androidx/core/graphics/Insets;->left:I

    iget v5, v1, Ltds/androidx/core/graphics/Insets;->right:I

    invoke-static {v4, v0, v5, v3}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 945
    .end local v1    # "systemWindow":Ltds/androidx/core/graphics/Insets;
    .end local v2    # "rootStable":Ltds/androidx/core/graphics/Insets;
    .end local v3    # "bottom":I
    :sswitch_bb
    if-eqz p2, :cond_d2

    .line 946
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    .line 947
    .local v1, "rootStable":Ltds/androidx/core/graphics/Insets;
    iget v2, v1, Ltds/androidx/core/graphics/Insets;->top:I

    .line 948
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v3

    iget v3, v3, Ltds/androidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 947
    invoke-static {v0, v2, v0, v0}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 950
    .end local v1    # "rootStable":Ltds/androidx/core/graphics/Insets;
    :cond_d2
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Ltds/androidx/core/graphics/Insets;->top:I

    invoke-static {v0, v1, v0, v0}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_bb
        0x2 -> :sswitch_73
        0x8 -> :sswitch_3e
        0x10 -> :sswitch_39
        0x20 -> :sswitch_34
        0x40 -> :sswitch_2f
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method public getInsetsIgnoringVisibility(I)Ltds/androidx/core/graphics/Insets;
    .registers 3
    .param p1, "typeMask"    # I

    .line 911
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method final getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;
    .registers 5

    .line 1049
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Ltds/androidx/core/graphics/Insets;

    if-nez v0, :cond_22

    .line 1050
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1051
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1052
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1053
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1054
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1050
    invoke-static {v0, v1, v2, v3}, Ltds/androidx/core/graphics/Insets;->of(IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Ltds/androidx/core/graphics/Insets;

    .line 1056
    :cond_22
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Ltds/androidx/core/graphics/Insets;

    return-object v0
.end method

.method inset(IIII)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1063
    new-instance v0, Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v1}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;-><init>(Ltds/androidx/core/view/WindowInsetsCompat;)V

    .line 1064
    .local v0, "b":Ltds/androidx/core/view/WindowInsetsCompat$Builder;
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Ltds/androidx/core/view/WindowInsetsCompat;->insetInsets(Ltds/androidx/core/graphics/Insets;IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    .line 1065
    invoke-virtual {p0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Ltds/androidx/core/view/WindowInsetsCompat;->insetInsets(Ltds/androidx/core/graphics/Insets;IIII)Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Ltds/androidx/core/graphics/Insets;)Ltds/androidx/core/view/WindowInsetsCompat$Builder;

    .line 1066
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat$Builder;->build()Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method isRound()Z
    .registers 2

    .line 899
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method protected isTypeVisible(I)Z
    .registers 5
    .param p1, "type"    # I

    .line 1032
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_14

    .line 1042
    return v0

    .line 1040
    :sswitch_6
    return v1

    .line 1037
    :sswitch_7
    invoke-virtual {p0, p1, v1}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Ltds/androidx/core/graphics/Insets;

    move-result-object v1

    sget-object v2, Ltds/androidx/core/graphics/Insets;->NONE:Ltds/androidx/core/graphics/Insets;

    invoke-virtual {v1, v2}, Ltds/androidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_7
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method isVisible(I)Z
    .registers 4
    .param p1, "typeMask"    # I

    .line 917
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_15

    .line 918
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 919
    goto :goto_12

    .line 921
    :cond_a
    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->isTypeVisible(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 922
    const/4 v1, 0x0

    return v1

    .line 917
    :cond_12
    :goto_12
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 925
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method setRootViewData(Ltds/androidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "visibleInsets"    # Ltds/androidx/core/graphics/Insets;

    .line 1082
    iput-object p1, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Ltds/androidx/core/graphics/Insets;

    .line 1083
    return-void
.end method

.method setRootWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)V
    .registers 2
    .param p1, "rootWindowInsets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1077
    iput-object p1, p0, Ltds/androidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1078
    return-void
.end method
