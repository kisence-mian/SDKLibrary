.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "ImmLeaksCleaner.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final INIT_FAILED:I = 0x2

.field private static final INIT_SUCCESS:I = 0x1

.field private static final NOT_INITIALIAZED:I

.field private static sHField:Ljava/lang/reflect/Field;

.field private static sNextServedViewField:Ljava/lang/reflect/Field;

.field private static sReflectedFieldsInitialized:I

.field private static sServedViewField:Ljava/lang/reflect/Field;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    .line 47
    return-void
.end method

.method private static initializeReflectiveFields()V
    .registers 3

    .line 101
    const/4 v0, 0x2

    :try_start_1
    sput v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    .line 102
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "mServedView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "mNextServedView"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "mH"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    sput v1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_2d} :catch_2e

    .line 111
    goto :goto_2f

    .line 109
    :catch_2e
    move-exception v0

    .line 112
    :goto_2f
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 8
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 51
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, v0, :cond_5

    .line 52
    return-void

    .line 54
    :cond_5
    sget v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    if-nez v0, :cond_c

    .line 55
    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->initializeReflectiveFields()V

    .line 57
    :cond_c
    sget v0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_56

    .line 58
    iget-object v0, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :try_start_1b
    sget-object v1, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_21} :catch_54

    .line 65
    .local v1, "lock":Ljava/lang/Object;
    nop

    .line 66
    if-nez v1, :cond_25

    .line 67
    return-void

    .line 69
    :cond_25
    monitor-enter v1

    .line 72
    :try_start_26
    sget-object v2, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2e} :catch_4f
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_2e} :catch_4c
    .catchall {:try_start_26 .. :try_end_2e} :catchall_4a

    .line 77
    .local v2, "servedView":Landroid/view/View;
    nop

    .line 78
    if-nez v2, :cond_33

    .line 79
    :try_start_31
    monitor-exit v1

    return-void

    .line 81
    :cond_33
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 82
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_4a

    return-void

    .line 87
    :cond_3b
    :try_start_3b
    sget-object v3, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_41} :catch_47
    .catchall {:try_start_3b .. :try_end_41} :catchall_4a

    .line 90
    nop

    .line 91
    .end local v2    # "servedView":Landroid/view/View;
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4a

    .line 94
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    goto :goto_56

    .line 88
    .restart local v2    # "servedView":Landroid/view/View;
    :catch_47
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_48
    monitor-exit v1

    return-void

    .line 91
    .end local v2    # "servedView":Landroid/view/View;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catchall_4a
    move-exception v2

    goto :goto_52

    .line 75
    :catch_4c
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/ClassCastException;
    monitor-exit v1

    return-void

    .line 73
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_4f
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/IllegalAccessException;
    monitor-exit v1

    return-void

    .line 91
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_4a

    throw v2

    .line 63
    .end local v1    # "lock":Ljava/lang/Object;
    :catch_54
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/IllegalAccessException;
    return-void

    .line 96
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_56
    :goto_56
    return-void
.end method
