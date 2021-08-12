.class public Lcom/bytedance/embedapplog/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/bf;->c:Landroid/util/LruCache;

    return-void
.end method

.method static a(Ljava/util/List;I)I
    .registers 2

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr p1, p0

    return p1
.end method

.method private static a(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 3

    .line 271
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mText"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p0

    .line 274
    :catchall_13
    move-exception p0

    .line 275
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 276
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/view/View;Z)Ljava/lang/String;
    .registers 5

    .line 163
    const v0, 0x5042b0a

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_10

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 165
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 166
    :cond_10
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 167
    return-object v0

    .line 169
    :cond_14
    sget-object p1, Lcom/bytedance/embedapplog/bf;->a:Landroid/util/SparseArray;

    if-nez p1, :cond_1f

    .line 170
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    sput-object p1, Lcom/bytedance/embedapplog/bf;->a:Landroid/util/SparseArray;

    .line 173
    :cond_1f
    sget-object p1, Lcom/bytedance/embedapplog/bf;->b:Ljava/util/Set;

    if-nez p1, :cond_2a

    .line 174
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    sput-object p1, Lcom/bytedance/embedapplog/bf;->b:Ljava/util/Set;

    .line 177
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    .line 178
    const/high16 v1, 0x7f000000

    if-le p1, v1, :cond_61

    sget-object v1, Lcom/bytedance/embedapplog/bf;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 179
    sget-object v1, Lcom/bytedance/embedapplog/bf;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    if-eqz v1, :cond_49

    .line 181
    return-object v1

    .line 185
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    .line 186
    sget-object v1, Lcom/bytedance/embedapplog/bf;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_56} :catch_57

    .line 187
    return-object p0

    .line 188
    :catch_57
    move-exception p0

    .line 189
    sget-object p0, Lcom/bytedance/embedapplog/bf;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_61
    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    .line 44
    sget-object v0, Lcom/bytedance/embedapplog/bf;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 48
    const-string v0, "Anonymous"

    .line 51
    :cond_1a
    sget-object v1, Lcom/bytedance/embedapplog/bf;->c:Landroid/util/LruCache;

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/bc;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    :cond_22
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 145
    if-nez p0, :cond_5

    .line 146
    const-string p0, ""

    return-object p0

    .line 148
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_18

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 152
    :cond_18
    invoke-static {p0}, Lcom/bytedance/embedapplog/bf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/View;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    nop

    .line 60
    nop

    .line 61
    const v0, 0x5042b0c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12a

    .line 64
    :cond_12
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_41

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    const/4 v4, 0x0

    :goto_23
    if-ge v4, v2, :cond_3d

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3d

    .line 69
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/bytedance/embedapplog/bf;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 71
    :cond_3d
    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_12a

    .line 72
    :cond_41
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_6a

    .line 73
    const v0, 0x5042b13

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_129

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    .line 74
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    .line 73
    invoke-static {v2}, Lcom/bytedance/embedapplog/bf;->a(I)Z

    move-result v2

    if-nez v2, :cond_129

    .line 75
    invoke-static {v0}, Lcom/bytedance/embedapplog/bf;->a(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    if-nez v0, :cond_64

    const-string v0, ""

    goto :goto_68

    :cond_64
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_68
    goto/16 :goto_12a

    .line 78
    :cond_6a
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_7b

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12a

    .line 82
    :cond_7b
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_aa

    .line 83
    move-object v0, p0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    .line 84
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_8d

    .line 85
    check-cast v2, Ljava/lang/String;

    goto :goto_a7

    .line 87
    :cond_8d
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 88
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_a6

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_a6

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a7

    .line 92
    :cond_a6
    move-object v2, v1

    :goto_a7
    move-object v0, v2

    goto/16 :goto_12a

    :cond_aa
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_bb

    .line 93
    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12a

    .line 94
    :cond_bb
    instance-of v0, p0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_e3

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 96
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_e1

    instance-of v2, v0, Landroid/widget/RadioButton;

    if-eqz v2, :cond_e1

    check-cast v0, Landroid/widget/RadioButton;

    .line 98
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 99
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e2

    .line 101
    :cond_e1
    move-object v0, v1

    :goto_e2
    goto :goto_12a

    :cond_e3
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_f9

    .line 102
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_129

    .line 103
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12a

    .line 105
    :cond_f9
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_105

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_129

    .line 107
    move-object v0, p1

    goto :goto_12a

    .line 111
    :cond_105
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_119

    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/bytedance/embedapplog/bg;->a(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_119

    .line 112
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_129

    .line 114
    goto :goto_12a

    .line 116
    :cond_119
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 117
    move-object v0, p0

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_129

    .line 119
    goto :goto_12a

    .line 125
    :cond_129
    move-object v0, v1

    :goto_12a
    if-nez v1, :cond_158

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 127
    if-eqz p1, :cond_135

    .line 128
    goto :goto_145

    .line 129
    :cond_135
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_144

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_145

    .line 129
    :cond_144
    move-object p1, v0

    .line 132
    :goto_145
    invoke-static {p1}, Lcom/bytedance/embedapplog/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_149
    new-instance v1, Ljava/util/ArrayList;

    const/4 p0, 0x1

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_158

    .line 136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_158
    return-object v1
.end method

.method private static a(I)Z
    .registers 2

    .line 265
    and-int/lit16 p0, p0, 0xfff

    .line 266
    const/16 v0, 0x81

    if-eq p0, v0, :cond_15

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_15

    const/16 v0, 0x12

    if-eq p0, v0, :cond_15

    const/16 v0, 0x91

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method static a(Landroid/view/View;)Z
    .registers 2

    .line 157
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_1f

    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 158
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 159
    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p0}, Lcom/bytedance/embedapplog/bc;->d(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    .line 157
    :goto_20
    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 282
    return-object p0
.end method

.method static b(Landroid/view/View;)Z
    .registers 2

    .line 202
    if-eqz p0, :cond_d

    sget v0, Lcom/bytedance/embedapplog/R$id;->tag_ignore:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
