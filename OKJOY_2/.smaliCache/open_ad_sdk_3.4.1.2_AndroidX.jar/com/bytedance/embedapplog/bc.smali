.class public Lcom/bytedance/embedapplog/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field private static b:Ljava/lang/Class;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->a:Z

    .line 219
    const-string v0, "com.tencent.smtt.sdk.WebView"

    invoke-static {v0}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->d:Z

    .line 220
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    invoke-static {v0}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/bytedance/embedapplog/bc;->e:Z

    .line 221
    const-string v1, "androidx.viewpager.widget.ViewPager"

    invoke-static {v1}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/bytedance/embedapplog/bc;->f:Z

    .line 222
    const-string v2, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    invoke-static {v2}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/bytedance/embedapplog/bc;->g:Z

    .line 223
    const-string v3, "androidx.fragment.app.Fragment"

    invoke-static {v3}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/bytedance/embedapplog/bc;->h:Z

    .line 224
    const-string v4, "androidx.fragment.app.FragmentActivity"

    invoke-static {v4}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/bytedance/embedapplog/bc;->i:Z

    .line 225
    const-string v5, "androidx.appcompat.app.AlertDialog"

    invoke-static {v5}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/bytedance/embedapplog/bc;->j:Z

    .line 226
    const-string v6, "androidx.appcompat.view.menu.ListMenuItemView"

    invoke-static {v6}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/bytedance/embedapplog/bc;->k:Z

    .line 227
    invoke-static {v0}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->l:Z

    .line 228
    invoke-static {v1}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->m:Z

    .line 229
    invoke-static {v2}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->n:Z

    .line 230
    invoke-static {v3}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->o:Z

    .line 231
    invoke-static {v4}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->p:Z

    .line 232
    invoke-static {v5}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->q:Z

    .line 233
    invoke-static {v6}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/embedapplog/bc;->r:Z

    .line 236
    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/View;)I
    .registers 5

    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/bytedance/embedapplog/bc;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_24

    .line 73
    sget-object v0, Lcom/bytedance/embedapplog/bc;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p0

    .line 77
    :catch_1b
    move-exception p0

    .line 78
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 75
    :catch_20
    move-exception p0

    .line 76
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 79
    :cond_24
    nop

    .line 81
    :goto_25
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 103
    :goto_0
    if-eqz p0, :cond_3a

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_c
    const-string v2, "getChildAdapterPosition"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v0

    .line 106
    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/bytedance/embedapplog/bc;->c:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_1a} :catch_1b

    .line 108
    goto :goto_1c

    .line 107
    :catch_1b
    move-exception v2

    .line 110
    :goto_1c
    sget-object v2, Lcom/bytedance/embedapplog/bc;->c:Ljava/lang/reflect/Method;

    if-nez v2, :cond_30

    .line 112
    :try_start_20
    const-string v2, "getChildPosition"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/bc;->c:Ljava/lang/reflect/Method;
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_2e} :catch_2f

    .line 114
    goto :goto_30

    .line 113
    :catch_2f
    move-exception v0

    .line 117
    :cond_30
    :goto_30
    sget-object v0, Lcom/bytedance/embedapplog/bc;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_35

    .line 118
    return-object p0

    .line 121
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 124
    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->l:Z

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->e:Z

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->a:Z

    if-nez v0, :cond_2a

    .line 87
    if-eqz p1, :cond_2a

    const-string v0, "RecyclerView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 89
    :try_start_16
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 90
    if-eqz p1, :cond_25

    sget-object p1, Lcom/bytedance/embedapplog/bc;->c:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_25

    .line 91
    sput-object p0, Lcom/bytedance/embedapplog/bc;->b:Ljava/lang/Class;

    .line 92
    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/embedapplog/bc;->a:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_26

    .line 96
    :cond_25
    goto :goto_2a

    .line 94
    :catch_26
    move-exception p0

    .line 95
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 100
    :cond_2a
    :goto_2a
    return-void
.end method

.method static a(Ljava/lang/Object;)Z
    .registers 2

    .line 128
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->a:Z

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    sget-object v0, Lcom/bytedance/embedapplog/bc;->b:Ljava/lang/Class;

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    .line 128
    :goto_22
    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 1

    .line 63
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 64
    const/4 p0, 0x1

    return p0

    .line 65
    :catchall_5
    move-exception p0

    .line 66
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/Object;)Z
    .registers 2

    .line 133
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->e:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static c(Ljava/lang/Object;)Z
    .registers 2

    .line 137
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->l:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static d(Ljava/lang/Object;)Z
    .registers 2

    .line 141
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->f:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/viewpager/widget/ViewPager;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static e(Ljava/lang/Object;)Z
    .registers 2

    .line 145
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->m:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/viewpager/widget/ViewPager;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static f(Ljava/lang/Object;)Z
    .registers 2

    .line 149
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->g:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static g(Ljava/lang/Object;)Z
    .registers 2

    .line 153
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->n:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static h(Ljava/lang/Object;)Z
    .registers 2

    .line 158
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->d:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Lcom/tencent/smtt/sdk/WebView;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static i(Ljava/lang/Object;)Z
    .registers 2

    .line 166
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->j:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static j(Ljava/lang/Object;)Z
    .registers 2

    .line 170
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->q:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static k(Ljava/lang/Object;)Z
    .registers 2

    .line 190
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->k:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static l(Ljava/lang/Object;)Z
    .registers 2

    .line 194
    sget-boolean v0, Lcom/bytedance/embedapplog/bc;->r:Z

    if-eqz v0, :cond_a

    instance-of p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
