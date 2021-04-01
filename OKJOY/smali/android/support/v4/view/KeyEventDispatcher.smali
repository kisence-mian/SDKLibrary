.class public Landroid/support/v4/view/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/KeyEventDispatcher$Component;
    }
.end annotation


# static fields
.field private static sActionBarFieldsFetched:Z

.field private static sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

.field private static sDialogFieldsFetched:Z

.field private static sDialogKeyListenerField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Landroid/support/v4/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 47
    sput-object v1, Landroid/support/v4/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    .line 48
    sput-boolean v0, Landroid/support/v4/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 49
    sput-object v1, Landroid/support/v4/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z
    .registers 9
    .param p0, "actionBar"    # Landroid/app/ActionBar;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 96
    sget-boolean v0, Landroid/support/v4/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    if-nez v0, :cond_1c

    .line 99
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onMenuKeyEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1a} :catch_38

    .line 102
    :goto_1a
    sput-boolean v6, Landroid/support/v4/view/KeyEventDispatcher;->sActionBarFieldsFetched:Z

    .line 104
    :cond_1c
    sget-object v0, Landroid/support/v4/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    .line 106
    :try_start_20
    sget-object v0, Landroid/support/v4/view/KeyEventDispatcher;->sActionBarOnMenuKeyMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_31} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_31} :catch_33

    move-result v0

    .line 111
    :goto_32
    return v0

    .line 108
    :catch_33
    move-exception v0

    :cond_34
    :goto_34
    move v0, v1

    .line 111
    goto :goto_32

    .line 107
    :catch_36
    move-exception v0

    goto :goto_34

    .line 100
    :catch_38
    move-exception v0

    goto :goto_1a
.end method

.method private static activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 121
    .local v3, "win":Landroid/view/Window;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 124
    .local v2, "keyCode":I
    const/16 v5, 0x52

    if-ne v2, v5, :cond_25

    if-eqz v0, :cond_25

    .line 125
    invoke-static {v0, p1}, Landroid/support/v4/view/KeyEventDispatcher;->actionBarOnMenuKeyEventPre28(Landroid/app/ActionBar;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 137
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "keyCode":I
    :cond_24
    :goto_24
    return v4

    .line 130
    :cond_25
    invoke-virtual {v3, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 133
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "decor":Landroid/view/View;
    invoke-static {v1, p1}, Landroid/support/v4/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 137
    if-eqz v1, :cond_40

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 137
    :goto_3b
    invoke-virtual {p1, p0, v4, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_24

    .line 138
    :cond_40
    const/4 v4, 0x0

    goto :goto_3b
.end method

.method private static dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 161
    invoke-static {p0}, Landroid/support/v4/view/KeyEventDispatcher;->getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    .line 162
    .local v1, "onKeyListener":Landroid/content/DialogInterface$OnKeyListener;
    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 173
    :cond_11
    :goto_11
    return v3

    .line 165
    :cond_12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 166
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 169
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "decor":Landroid/view/View;
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 173
    if-eqz v0, :cond_31

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 173
    :goto_2c
    invoke-virtual {p1, p0, v3, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_11

    .line 174
    :cond_31
    const/4 v3, 0x0

    goto :goto_2c
.end method

.method public static dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 3
    .param p0, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static dispatchKeyEvent(Landroid/support/v4/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p0, "component"    # Landroid/support/v4/view/KeyEventDispatcher$Component;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "root"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/view/Window$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 80
    if-nez p0, :cond_4

    .line 92
    .end local p2    # "callback":Landroid/view/Window$Callback;
    :cond_3
    :goto_3
    return v0

    .line 83
    .restart local p2    # "callback":Landroid/view/Window$Callback;
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_f

    .line 84
    invoke-interface {p0, p3}, Landroid/support/v4/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    .line 86
    :cond_f
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_1a

    .line 87
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "callback":Landroid/view/Window$Callback;
    invoke-static {p2, p3}, Landroid/support/v4/view/KeyEventDispatcher;->activitySuperDispatchKeyEventPre28(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    .line 88
    .restart local p2    # "callback":Landroid/view/Window$Callback;
    :cond_1a
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_25

    .line 89
    check-cast p2, Landroid/app/Dialog;

    .end local p2    # "callback":Landroid/view/Window$Callback;
    invoke-static {p2, p3}, Landroid/support/v4/view/KeyEventDispatcher;->dialogSuperDispatchKeyEventPre28(Landroid/app/Dialog;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    .line 91
    .restart local p2    # "callback":Landroid/view/Window$Callback;
    :cond_25
    if-eqz p1, :cond_2d

    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 92
    :cond_2d
    invoke-interface {p0, p3}, Landroid/support/v4/view/KeyEventDispatcher$Component;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_33
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static getDialogKeyListenerPre28(Landroid/app/Dialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 4
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    .line 142
    sget-boolean v0, Landroid/support/v4/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    if-nez v0, :cond_17

    .line 144
    :try_start_5
    const-class v0, Landroid/app/Dialog;

    const-string v1, "mOnKeyListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    .line 145
    sget-object v0, Landroid/support/v4/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_27

    .line 148
    :goto_15
    sput-boolean v2, Landroid/support/v4/view/KeyEventDispatcher;->sDialogFieldsFetched:Z

    .line 151
    :cond_17
    sget-object v0, Landroid/support/v4/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_25

    .line 153
    :try_start_1b
    sget-object v0, Landroid/support/v4/view/KeyEventDispatcher;->sDialogKeyListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_23} :catch_24

    .line 157
    :goto_23
    return-object v0

    .line 154
    :catch_24
    move-exception v0

    .line 157
    :cond_25
    const/4 v0, 0x0

    goto :goto_23

    .line 146
    :catch_27
    move-exception v0

    goto :goto_15
.end method
