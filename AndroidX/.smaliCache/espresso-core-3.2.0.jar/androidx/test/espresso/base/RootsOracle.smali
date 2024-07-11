.class final Landroidx/test/espresso/base/RootsOracle;
.super Ljava/lang/Object;
.source "RootsOracle.java"

# interfaces
.implements Landroidx/test/espresso/base/ActiveRootLister;


# static fields
.field private static final GET_DEFAULT_IMPL:Ljava/lang/String; = "getDefault"

.field private static final GET_GLOBAL_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final TAG:Ljava/lang/String;

.field private static final VIEWS_FIELD:Ljava/lang/String; = "mViews"

.field private static final WINDOW_MANAGER_GLOBAL_CLAZZ:Ljava/lang/String; = "android.view.WindowManagerGlobal"

.field private static final WINDOW_MANAGER_IMPL_CLAZZ:Ljava/lang/String; = "android.view.WindowManagerImpl"

.field private static final WINDOW_PARAMS_FIELD:Ljava/lang/String; = "mParams"


# instance fields
.field private initialized:Z

.field private final mainLooper:Landroid/os/Looper;

.field private paramsField:Ljava/lang/reflect/Field;

.field private viewsField:Ljava/lang/reflect/Field;

.field private windowManagerObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroidx/test/espresso/base/RootsOracle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainLooper"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroidx/test/espresso/base/RootsOracle;->mainLooper:Landroid/os/Looper;

    .line 68
    return-void
.end method

.method private initialize()V
    .registers 14

    .line 141
    const-string v0, "reflective setup failed using obj: %s method: %s field: %s"

    const-string v1, "mParams"

    const-string v2, "mViews"

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/test/espresso/base/RootsOracle;->initialized:Z

    .line 143
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_12

    const-string v4, "android.view.WindowManagerGlobal"

    goto :goto_14

    :cond_12
    const-string v4, "android.view.WindowManagerImpl"

    .line 144
    :goto_14
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v5, :cond_1b

    const-string v5, "getInstance"

    goto :goto_1d

    :cond_1b
    const-string v5, "getDefault"

    .line 147
    :goto_1d
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    :try_start_20
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 148
    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v9, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 149
    const/4 v11, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    .line 150
    invoke-virtual {v9, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    iput-object v10, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    .line 151
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 152
    invoke-virtual {v9, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    .line 153
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_45} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_45} :catch_9d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20 .. :try_end_45} :catch_86
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_45} :catch_71
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_45} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_45} :catch_47

    goto/16 :goto_c8

    .line 187
    :catch_47
    move-exception v1

    .line 188
    sget-object v9, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v5, v6, v3

    aput-object v2, v6, v7

    .line 190
    invoke-static {v10, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 177
    :catch_5c
    move-exception v1

    .line 178
    sget-object v9, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v5, v6, v3

    aput-object v2, v6, v7

    .line 180
    invoke-static {v10, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c8

    .line 171
    :catch_71
    move-exception v0

    .line 172
    sget-object v1, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v8

    aput-object v4, v6, v3

    .line 174
    const-string v3, "could not find method: %s on %s"

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c8

    .line 161
    :catch_86
    move-exception v0

    .line 162
    sget-object v5, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v2, v6, v3

    aput-object v4, v6, v7

    .line 164
    const-string v1, "could not find field: %s or %s on %s"

    invoke-static {v9, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c8

    .line 159
    :catch_9d
    move-exception v0

    .line 160
    sget-object v1, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v8

    const-string v4, "could not find class: %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c8

    .line 154
    :catch_b0
    move-exception v0

    .line 155
    sget-object v1, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v8

    aput-object v4, v6, v3

    .line 157
    const-string v3, "could not invoke: %s on %s"

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 155
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    :goto_c8
    nop

    .line 198
    :goto_c9
    return-void
.end method


# virtual methods
.method public listActiveRoots()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/espresso/Root;",
            ">;"
        }
    .end annotation

    .line 73
    const-string v0, "Reflective access to %s or %s on %s failed."

    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->mainLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "must be called on main thread."

    invoke-static {v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 75
    iget-boolean v1, p0, Landroidx/test/espresso/base/RootsOracle;->initialized:Z

    if-nez v1, :cond_18

    .line 76
    invoke-direct {p0}, Landroidx/test/espresso/base/RootsOracle;->initialize()V

    .line 79
    :cond_18
    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    if-nez v1, :cond_28

    .line 80
    sget-object v0, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to windowmanager object."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 84
    :cond_28
    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_38

    .line 85
    sget-object v0, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to mViews"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 88
    :cond_38
    iget-object v1, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_48

    .line 89
    sget-object v0, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    const-string v1, "No reflective access to mParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 93
    :cond_48
    nop

    .line 94
    nop

    .line 97
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    :try_start_4e
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_71

    .line 98
    iget-object v5, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/View;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 99
    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    iget-object v7, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/view/WindowManager$LayoutParams;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_86

    .line 101
    :cond_71
    iget-object v5, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 102
    iget-object v6, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    iget-object v7, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_85
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_85} :catch_d6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_85} :catch_b7

    move-object v0, v6

    .line 126
    :goto_86
    nop

    .line 128
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_90
    const/4 v3, -0x1

    if-le v2, v3, :cond_b6

    .line 130
    new-instance v3, Landroidx/test/espresso/Root$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/Root$Builder;-><init>()V

    .line 132
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroidx/test/espresso/Root$Builder;->withDecorView(Landroid/view/View;)Landroidx/test/espresso/Root$Builder;

    move-result-object v3

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroidx/test/espresso/Root$Builder;->withWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroidx/test/espresso/Root$Builder;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Landroidx/test/espresso/Root$Builder;->build()Landroidx/test/espresso/Root;

    move-result-object v3

    .line 130
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v2, v2, -0x1

    goto :goto_90

    .line 137
    :cond_b6
    return-object v1

    .line 115
    :catch_b7
    move-exception v5

    .line 116
    sget-object v6, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    aput-object v8, v3, v2

    iget-object v2, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    aput-object v2, v3, v4

    iget-object v2, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 118
    invoke-static {v7, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v6, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 104
    :catch_d6
    move-exception v5

    .line 105
    sget-object v6, Landroidx/test/espresso/base/RootsOracle;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Landroidx/test/espresso/base/RootsOracle;->viewsField:Ljava/lang/reflect/Field;

    aput-object v8, v3, v2

    iget-object v2, p0, Landroidx/test/espresso/base/RootsOracle;->paramsField:Ljava/lang/reflect/Field;

    aput-object v2, v3, v4

    iget-object v2, p0, Landroidx/test/espresso/base/RootsOracle;->windowManagerObj:Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 107
    invoke-static {v7, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v6, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
