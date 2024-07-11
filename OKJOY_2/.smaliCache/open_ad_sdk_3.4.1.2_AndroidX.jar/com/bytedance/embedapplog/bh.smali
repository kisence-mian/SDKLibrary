.class public Lcom/bytedance/embedapplog/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Class;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/Class;

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z

.field private static h:Z

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/embedapplog/bh;->g:Z

    .line 49
    sput-boolean v0, Lcom/bytedance/embedapplog/bh;->h:Z

    .line 51
    sput-boolean v0, Lcom/bytedance/embedapplog/bh;->i:Z

    return-void
.end method

.method static a(Landroid/view/View;)Ljava/lang/String;
    .registers 7

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 210
    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "/PopupWindow"

    const-string v3, "/CustomWindow"

    const-string v4, "/MainWindow"

    if-eqz v1, :cond_37

    .line 211
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 212
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 213
    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 214
    return-object v4

    .line 215
    :cond_16
    const/16 v1, 0x63

    if-ge v0, v1, :cond_25

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v5, Lcom/bytedance/embedapplog/bh;->d:Ljava/lang/Class;

    if-ne v1, v5, :cond_25

    .line 217
    const-string p0, "/DialogWindow"

    return-object p0

    .line 218
    :cond_25
    const/16 v1, 0x7cf

    if-ge v0, v1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v5, Lcom/bytedance/embedapplog/bh;->a:Ljava/lang/Class;

    if-ne v1, v5, :cond_32

    .line 219
    return-object v2

    .line 220
    :cond_32
    const/16 v1, 0xbb7

    if-ge v0, v1, :cond_37

    .line 221
    return-object v3

    .line 226
    :cond_37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 227
    sget-object v0, Lcom/bytedance/embedapplog/bh;->d:Ljava/lang/Class;

    if-ne p0, v0, :cond_40

    .line 228
    return-object v4

    .line 230
    :cond_40
    sget-object v0, Lcom/bytedance/embedapplog/bh;->a:Ljava/lang/Class;

    if-ne p0, v0, :cond_45

    goto :goto_46

    :cond_45
    move-object v2, v3

    :goto_46
    return-object v2
.end method

.method public static a()V
    .registers 4

    .line 57
    sget-boolean v0, Lcom/bytedance/embedapplog/bh;->g:Z

    if-nez v0, :cond_d0

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_d

    .line 60
    const-string v0, "android.view.WindowManagerGlobal"

    goto :goto_f

    .line 62
    :cond_d
    const-string v0, "android.view.WindowManagerImpl"

    .line 68
    :goto_f
    const/4 v2, 0x1

    :try_start_10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1b

    .line 71
    const-string v1, "sDefaultWindowManager"

    goto :goto_26

    .line 72
    :cond_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v1, v3, :cond_24

    .line 73
    const-string v1, "sWindowManager"

    goto :goto_26

    .line 75
    :cond_24
    const-string v1, "mWindowManager"

    .line 78
    :goto_26
    const-string v3, "mViews"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/bytedance/embedapplog/bh;->c:Ljava/lang/reflect/Field;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/bytedance/embedapplog/bh;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    sget-object v1, Lcom/bytedance/embedapplog/bh;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/util/ArrayList;

    if-ne v1, v3, :cond_44

    .line 82
    sput-boolean v2, Lcom/bytedance/embedapplog/bh;->h:Z

    goto :goto_50

    .line 83
    :cond_44
    sget-object v1, Lcom/bytedance/embedapplog/bh;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v3, [Landroid/view/View;

    if-ne v1, v3, :cond_50

    .line 84
    sput-boolean v2, Lcom/bytedance/embedapplog/bh;->i:Z

    .line 87
    :cond_50
    :goto_50
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/bh;->b:Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_5a} :catch_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_5a} :catch_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_5a} :catch_5b

    goto :goto_69

    .line 93
    :catch_5b
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 91
    :catch_60
    move-exception v0

    .line 92
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_69

    .line 89
    :catch_65
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 95
    :goto_69
    nop

    .line 98
    :goto_6a
    :try_start_6a
    const-string v0, "com.android.internal.view.menu.ListMenuItemView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/bh;->e:Ljava/lang/Class;

    .line 99
    const-string v0, "com.android.internal.view.menu.MenuView$ItemView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    const-string v1, "getItemData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/bh;->f:Ljava/lang/reflect/Method;
    :try_end_83
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_83} :catch_89
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6a .. :try_end_83} :catch_84

    goto :goto_8d

    .line 103
    :catch_84
    move-exception v0

    .line 104
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_8e

    .line 101
    :catch_89
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 105
    :goto_8d
    nop

    .line 108
    :goto_8e
    const/16 v0, 0x17

    :try_start_90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_92
    .catch Ljava/lang/ClassNotFoundException; {:try_start_90 .. :try_end_92} :catch_b0

    if-lt v1, v0, :cond_a7

    .line 110
    :try_start_94
    const-string v1, "com.android.internal.policy.PhoneWindow$DecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/bh;->d:Ljava/lang/Class;
    :try_end_9c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_94 .. :try_end_9c} :catch_9d

    .line 113
    :goto_9c
    goto :goto_af

    .line 111
    :catch_9d
    move-exception v1

    .line 112
    :try_start_9e
    const-string v1, "com.android.internal.policy.DecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/bh;->d:Ljava/lang/Class;

    goto :goto_9c

    .line 115
    :cond_a7
    const-string v1, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/bh;->d:Ljava/lang/Class;
    :try_end_af
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9e .. :try_end_af} :catch_b0

    .line 119
    :goto_af
    goto :goto_b4

    .line 117
    :catch_b0
    move-exception v1

    .line 118
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 122
    :goto_b4
    :try_start_b4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_c1

    .line 123
    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/bh;->a:Ljava/lang/Class;

    goto :goto_c9

    .line 125
    :cond_c1
    const-string v0, "android.widget.PopupWindow$PopupViewContainer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/bh;->a:Ljava/lang/Class;
    :try_end_c9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b4 .. :try_end_c9} :catch_ca

    .line 129
    :goto_c9
    goto :goto_ce

    .line 127
    :catch_ca
    move-exception v0

    .line 128
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 131
    :goto_ce
    sput-boolean v2, Lcom/bytedance/embedapplog/bh;->g:Z

    .line 133
    :cond_d0
    return-void
.end method

.method private static a([Landroid/view/View;)[Landroid/view/View;
    .registers 7

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    nop

    .line 179
    array-length v1, p0

    .line 181
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_3d

    .line 182
    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v3

    aget-object v4, p0, v4

    .line 183
    if-eqz v4, :cond_3a

    .line 184
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_3a

    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3a

    .line 186
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 187
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eqz v5, :cond_3a

    instance-of v5, v4, Lcom/bytedance/embedapplog/ca;

    if-eqz v5, :cond_30

    .line 189
    goto :goto_3a

    .line 192
    :cond_30
    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    invoke-static {v4}, Lcom/bytedance/embedapplog/bh;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 194
    goto :goto_3d

    .line 181
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 199
    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/View;

    .line 200
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 201
    return-object p0
.end method

.method static b(Landroid/view/View;)Z
    .registers 2

    .line 235
    sget-boolean v0, Lcom/bytedance/embedapplog/bh;->g:Z

    if-nez v0, :cond_7

    .line 236
    invoke-static {}, Lcom/bytedance/embedapplog/bh;->a()V

    .line 239
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 240
    sget-object v0, Lcom/bytedance/embedapplog/bh;->d:Ljava/lang/Class;

    if-eq p0, v0, :cond_16

    sget-object v0, Lcom/bytedance/embedapplog/bh;->a:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public static b()[Landroid/view/View;
    .registers 4

    .line 151
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/View;

    .line 152
    sget-object v2, Lcom/bytedance/embedapplog/bh;->b:Ljava/lang/Object;

    if-nez v2, :cond_1b

    .line 153
    invoke-static {}, Lcom/bytedance/embedapplog/f;->a()Landroid/app/Activity;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 155
    :cond_1a
    goto :goto_4b

    .line 157
    :cond_1b
    const/4 v0, 0x0

    .line 158
    :try_start_1c
    sget-boolean v3, Lcom/bytedance/embedapplog/bh;->h:Z

    if-eqz v3, :cond_31

    .line 159
    sget-object v0, Lcom/bytedance/embedapplog/bh;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    check-cast v0, [Landroid/view/View;

    goto :goto_3f

    .line 160
    :cond_31
    sget-boolean v3, Lcom/bytedance/embedapplog/bh;->i:Z

    if-eqz v3, :cond_3f

    .line 161
    sget-object v0, Lcom/bytedance/embedapplog/bh;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    check-cast v0, [Landroid/view/View;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3f} :catch_43

    .line 164
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_42

    .line 165
    move-object v1, v0

    .line 169
    :cond_42
    goto :goto_47

    .line 167
    :catch_43
    move-exception v0

    .line 168
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 171
    :goto_47
    invoke-static {v1}, Lcom/bytedance/embedapplog/bh;->a([Landroid/view/View;)[Landroid/view/View;

    move-result-object v1

    .line 173
    :goto_4b
    return-object v1
.end method

.method static c(Landroid/view/View;)Ljava/lang/Object;
    .registers 3

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/bytedance/embedapplog/bh;->e:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    .line 246
    sget-object v0, Lcom/bytedance/embedapplog/bh;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 247
    :cond_12
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->l(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 248
    check-cast p0, Landroidx/appcompat/view/menu/ListMenuItemView;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0

    .line 250
    :cond_1f
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    check-cast p0, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 251
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p0

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    .line 250
    :goto_2d
    return-object p0
.end method
