.class public final Landroidx/navigation/NavInflater;
.super Ljava/lang/Object;
.source "NavInflater.java"


# static fields
.field static final APPLICATION_ID_PLACEHOLDER:Ljava/lang/String; = "${applicationId}"

.field private static final TAG_ACTION:Ljava/lang/String; = "action"

.field private static final TAG_ARGUMENT:Ljava/lang/String; = "argument"

.field private static final TAG_DEEP_LINK:Ljava/lang/String; = "deepLink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final sTmpValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNavigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Landroidx/navigation/NavInflater;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 56
    return-void
.end method

.method private static checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;
    .registers 8
    .param p0, "value"    # Landroid/util/TypedValue;
    .param p1, "navType"    # Landroidx/navigation/NavType;
    .param p2, "expectedNavType"    # Landroidx/navigation/NavType;
    .param p3, "argType"    # Ljava/lang/String;
    .param p4, "foundType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 261
    if-eqz p1, :cond_34

    if-ne p1, p2, :cond_5

    goto :goto_34

    .line 262
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_34
    :goto_34
    if-eqz p1, :cond_38

    move-object v0, p1

    goto :goto_39

    :cond_38
    move-object v0, p2

    :goto_39
    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;
    .registers 21
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v6, Landroidx/navigation/NavInflater;->mNavigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v9

    .line 101
    .local v9, "navigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<*>;"
    invoke-virtual {v9}, Landroidx/navigation/Navigator;->createDestination()Landroidx/navigation/NavDestination;

    move-result-object v10

    .line 103
    .local v10, "dest":Landroidx/navigation/NavDestination;
    iget-object v0, v6, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v8}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x1

    .line 108
    .local v12, "innerDepth":I
    :goto_20
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v13, v0

    .local v13, "type":I
    if-eq v0, v11, :cond_a8

    .line 109
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    move v14, v0

    .local v14, "depth":I
    if-ge v0, v12, :cond_31

    const/4 v0, 0x3

    if-eq v13, v0, :cond_a8

    .line 111
    :cond_31
    const/4 v0, 0x2

    if-eq v13, v0, :cond_35

    .line 112
    goto :goto_20

    .line 115
    :cond_35
    if-le v14, v12, :cond_38

    .line 116
    goto :goto_20

    .line 119
    :cond_38
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 120
    .local v15, "name":Ljava/lang/String;
    const-string v0, "argument"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 121
    move/from16 v5, p4

    invoke-direct {v6, v7, v10, v8, v5}, Landroidx/navigation/NavInflater;->inflateArgumentForDestination(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;I)V

    goto :goto_a6

    .line 122
    :cond_4a
    move/from16 v5, p4

    const-string v0, "deepLink"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 123
    invoke-direct {v6, v7, v10, v8}, Landroidx/navigation/NavInflater;->inflateDeepLink(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;)V

    goto :goto_a6

    .line 124
    :cond_58
    const-string v0, "action"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavInflater;->inflateAction(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;I)V

    goto :goto_a6

    .line 126
    :cond_6f
    const-string v0, "include"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    instance-of v0, v10, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_96

    .line 127
    sget-object v0, Landroidx/navigation/R$styleable;->NavInclude:[I

    invoke-virtual {v7, v8, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavInclude_graph:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 129
    .local v1, "id":I
    move-object v2, v10

    check-cast v2, Landroidx/navigation/NavGraph;

    invoke-virtual {v6, v1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "id":I
    goto :goto_a5

    .line 131
    :cond_96
    instance-of v0, v10, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_a5

    .line 132
    move-object v0, v10

    check-cast v0, Landroidx/navigation/NavGraph;

    invoke-direct/range {p0 .. p4}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    goto :goto_a6

    .line 131
    :cond_a5
    :goto_a5
    nop

    .line 134
    .end local v15    # "name":Ljava/lang/String;
    :goto_a6
    goto/16 :goto_20

    .line 136
    .end local v14    # "depth":I
    :cond_a8
    return-object v10
.end method

.method private inflateAction(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;I)V
    .registers 21
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dest"    # Landroidx/navigation/NavDestination;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    sget-object v2, Landroidx/navigation/R$styleable;->NavAction:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 285
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroidx/navigation/R$styleable;->NavAction_android_id:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 286
    .local v3, "id":I
    sget v5, Landroidx/navigation/R$styleable;->NavAction_destination:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 287
    .local v5, "destId":I
    new-instance v6, Landroidx/navigation/NavAction;

    invoke-direct {v6, v5}, Landroidx/navigation/NavAction;-><init>(I)V

    .line 289
    .local v6, "action":Landroidx/navigation/NavAction;
    new-instance v7, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v7}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 290
    .local v7, "builder":Landroidx/navigation/NavOptions$Builder;
    sget v8, Landroidx/navigation/R$styleable;->NavAction_launchSingleTop:I

    invoke-virtual {v2, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/navigation/NavOptions$Builder;->setLaunchSingleTop(Z)Landroidx/navigation/NavOptions$Builder;

    .line 291
    sget v8, Landroidx/navigation/R$styleable;->NavAction_popUpTo:I

    const/4 v9, -0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    sget v10, Landroidx/navigation/R$styleable;->NavAction_popUpToInclusive:I

    .line 292
    invoke-virtual {v2, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 291
    invoke-virtual {v7, v8, v4}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 293
    sget v4, Landroidx/navigation/R$styleable;->NavAction_enterAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 294
    sget v4, Landroidx/navigation/R$styleable;->NavAction_exitAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 295
    sget v4, Landroidx/navigation/R$styleable;->NavAction_popEnterAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 296
    sget v4, Landroidx/navigation/R$styleable;->NavAction_popExitAnim:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroidx/navigation/NavOptions$Builder;->setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    .line 297
    invoke-virtual {v7}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/navigation/NavAction;->setNavOptions(Landroidx/navigation/NavOptions;)V

    .line 299
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 300
    .local v4, "args":Landroid/os/Bundle;
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 303
    .local v8, "innerDepth":I
    :goto_70
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move v11, v10

    .local v11, "type":I
    if-eq v10, v9, :cond_a4

    .line 304
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    move v12, v10

    .local v12, "depth":I
    if-ge v10, v8, :cond_86

    const/4 v10, 0x3

    if-eq v11, v10, :cond_82

    goto :goto_86

    :cond_82
    move-object v13, p0

    move/from16 v14, p5

    goto :goto_a7

    .line 306
    :cond_86
    :goto_86
    const/4 v10, 0x2

    if-eq v11, v10, :cond_8a

    .line 307
    goto :goto_70

    .line 310
    :cond_8a
    if-le v12, v8, :cond_8d

    .line 311
    goto :goto_70

    .line 313
    :cond_8d
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, "name":Ljava/lang/String;
    const-string v13, "argument"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 315
    move-object v13, p0

    move/from16 v14, p5

    invoke-direct {p0, v0, v4, v1, v14}, Landroidx/navigation/NavInflater;->inflateArgumentForBundle(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/util/AttributeSet;I)V

    goto :goto_a3

    .line 314
    :cond_a0
    move-object v13, p0

    move/from16 v14, p5

    .line 317
    .end local v10    # "name":Ljava/lang/String;
    :goto_a3
    goto :goto_70

    .line 303
    .end local v12    # "depth":I
    :cond_a4
    move-object v13, p0

    move/from16 v14, p5

    .line 318
    :goto_a7
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b0

    .line 319
    invoke-virtual {v6, v4}, Landroidx/navigation/NavAction;->setDefaultArguments(Landroid/os/Bundle;)V

    .line 321
    :cond_b0
    move-object/from16 v9, p2

    invoke-virtual {v9, v3, v6}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    .line 322
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    return-void
.end method

.method private inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;
    .registers 14
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 169
    new-instance v0, Landroidx/navigation/NavArgument$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavArgument$Builder;-><init>()V

    .line 170
    .local v0, "argumentBuilder":Landroidx/navigation/NavArgument$Builder;
    sget v1, Landroidx/navigation/R$styleable;->NavArgument_nullable:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavArgument$Builder;->setIsNullable(Z)Landroidx/navigation/NavArgument$Builder;

    .line 172
    sget-object v1, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/TypedValue;

    .line 173
    .local v3, "value":Landroid/util/TypedValue;
    if-nez v3, :cond_22

    .line 174
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v3, v4

    .line 175
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 178
    :cond_22
    const/4 v1, 0x0

    .line 179
    .local v1, "defaultValue":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 180
    .local v4, "navType":Landroidx/navigation/NavType;
    sget v5, Landroidx/navigation/R$styleable;->NavArgument_argType:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "argType":Ljava/lang/String;
    if-eqz v5, :cond_34

    .line 182
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/navigation/NavType;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 185
    :cond_34
    sget v6, Landroidx/navigation/R$styleable;->NavArgument_android_defaultValue:I

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_165

    .line 186
    sget-object v6, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    const-string v7, "\' for "

    const-string v8, "unsupported value \'"

    const/16 v9, 0x10

    if-ne v4, v6, :cond_8b

    .line 187
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_52

    .line 188
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_165

    .line 189
    :cond_52
    iget v6, v3, Landroid/util/TypedValue;->type:I

    if-ne v6, v9, :cond_60

    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-nez v6, :cond_60

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_165

    .line 193
    :cond_60
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 195
    invoke-virtual {v4}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Must be a reference to a resource."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_8b
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_d6

    .line 199
    if-nez v4, :cond_9b

    .line 200
    sget-object v4, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 201
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_165

    .line 203
    :cond_9b
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 205
    invoke-virtual {v4}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". You must use a \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 206
    invoke-virtual {v7}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" type to reference other resources."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_d6
    sget-object v6, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    if-ne v4, v6, :cond_e2

    .line 210
    sget v2, Landroidx/navigation/R$styleable;->NavArgument_android_defaultValue:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_165

    .line 212
    :cond_e2
    iget v6, v3, Landroid/util/TypedValue;->type:I

    sparse-switch v6, :sswitch_data_174

    .line 236
    iget v2, v3, Landroid/util/TypedValue;->type:I

    if-lt v2, v9, :cond_14a

    iget v2, v3, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v2, v6, :cond_14a

    .line 238
    sget-object v2, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    const-string v6, "integer"

    invoke-static {v3, v4, v2, v5, v6}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 240
    iget v2, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_165

    .line 231
    :sswitch_100
    sget-object v6, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    const-string v7, "boolean"

    invoke-static {v3, v4, v6, v5, v7}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 233
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_10d

    const/4 v2, 0x1

    :cond_10d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 234
    goto :goto_165

    .line 221
    :sswitch_112
    sget-object v2, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    const-string v6, "dimension"

    invoke-static {v3, v4, v2, v5, v6}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 223
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 224
    goto :goto_165

    .line 226
    :sswitch_128
    sget-object v2, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    const-string v6, "float"

    invoke-static {v3, v4, v2, v5, v6}, Landroidx/navigation/NavInflater;->checkNavType(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 228
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 229
    goto :goto_165

    .line 214
    :sswitch_139
    iget-object v2, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "stringValue":Ljava/lang/String;
    if-nez v4, :cond_145

    .line 216
    invoke-static {v2}, Landroidx/navigation/NavType;->inferFromValue(Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v4

    .line 218
    :cond_145
    invoke-virtual {v4, v2}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    goto :goto_165

    .line 242
    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_14a
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported argument type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/util/TypedValue;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_165
    :goto_165
    if-eqz v1, :cond_16a

    .line 250
    invoke-virtual {v0, v1}, Landroidx/navigation/NavArgument$Builder;->setDefaultValue(Ljava/lang/Object;)Landroidx/navigation/NavArgument$Builder;

    .line 252
    :cond_16a
    if-eqz v4, :cond_16f

    .line 253
    invoke-virtual {v0, v4}, Landroidx/navigation/NavArgument$Builder;->setType(Landroidx/navigation/NavType;)Landroidx/navigation/NavArgument$Builder;

    .line 255
    :cond_16f
    invoke-virtual {v0}, Landroidx/navigation/NavArgument$Builder;->build()Landroidx/navigation/NavArgument;

    move-result-object v2

    return-object v2

    :sswitch_data_174
    .sparse-switch
        0x3 -> :sswitch_139
        0x4 -> :sswitch_128
        0x5 -> :sswitch_112
        0x12 -> :sswitch_100
    .end sparse-switch
.end method

.method private inflateArgumentForBundle(Landroid/content/res/Resources;Landroid/os/Bundle;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 153
    sget-object v0, Landroidx/navigation/R$styleable;->NavArgument:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavArgument_android_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 158
    invoke-direct {p0, v0, p1, p4}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    move-result-object v2

    .line 159
    .local v2, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {v2}, Landroidx/navigation/NavArgument;->isDefaultValuePresent()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 160
    invoke-virtual {v2, v1, p2}, Landroidx/navigation/NavArgument;->putDefaultValue(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 162
    :cond_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    return-void

    .line 156
    .end local v2    # "argument":Landroidx/navigation/NavArgument;
    :cond_1f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Arguments must have a name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflateArgumentForDestination(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dest"    # Landroidx/navigation/NavDestination;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "graphResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 141
    sget-object v0, Landroidx/navigation/R$styleable;->NavArgument:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavArgument_android_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 146
    invoke-direct {p0, v0, p1, p4}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    move-result-object v2

    .line 147
    .local v2, "argument":Landroidx/navigation/NavArgument;
    invoke-virtual {p2, v1, v2}, Landroidx/navigation/NavDestination;->addArgument(Ljava/lang/String;Landroidx/navigation/NavArgument;)V

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void

    .line 144
    .end local v2    # "argument":Landroidx/navigation/NavArgument;
    :cond_19
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Arguments must have a name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflateDeepLink(Landroid/content/res/Resources;Landroidx/navigation/NavDestination;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "dest"    # Landroidx/navigation/NavDestination;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 270
    sget-object v0, Landroidx/navigation/R$styleable;->NavDeepLink:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 271
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->NavDeepLink_uri:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 276
    iget-object v2, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "${applicationId}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p2, v1}, Landroidx/navigation/NavDestination;->addDeepLink(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    return-void

    .line 273
    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Every <deepLink> must include an app:uri"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public inflate(I)Landroidx/navigation/NavGraph;
    .registers 11
    .param p1, "graphResId"    # I

    .line 67
    iget-object v0, p0, Landroidx/navigation/NavInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 69
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 72
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_e
    :try_start_e
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1a

    const/4 v3, 0x1

    if-eq v4, v3, :cond_1a

    goto :goto_e

    .line 76
    :cond_1a
    if-ne v4, v5, :cond_4e

    .line 80
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "rootElement":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object v5

    .line 82
    .local v5, "destination":Landroidx/navigation/NavDestination;
    instance-of v6, v5, Landroidx/navigation/NavGraph;

    if-eqz v6, :cond_2f

    .line 86
    move-object v6, v5

    check-cast v6, Landroidx/navigation/NavGraph;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_58
    .catchall {:try_start_e .. :try_end_2b} :catchall_56

    .line 92
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 86
    return-object v6

    .line 83
    :cond_2f
    :try_start_2f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Root element <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> did not inflate into a NavGraph"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local p1    # "graphResId":I
    throw v6

    .line 77
    .end local v3    # "rootElement":Ljava/lang/String;
    .end local v5    # "destination":Landroidx/navigation/NavDestination;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local p1    # "graphResId":I
    :cond_4e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local p1    # "graphResId":I
    throw v3
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_56} :catch_58
    .catchall {:try_start_2f .. :try_end_56} :catchall_56

    .line 92
    .end local v4    # "type":I
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local p1    # "graphResId":I
    :catchall_56
    move-exception v3

    goto :goto_84

    .line 87
    :catch_58
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Exception;
    :try_start_59
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception inflating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local p1    # "graphResId":I
    throw v4
    :try_end_84
    .catchall {:try_start_59 .. :try_end_84} :catchall_56

    .line 92
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local p1    # "graphResId":I
    :goto_84
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 93
    goto :goto_89

    :goto_88
    throw v3

    :goto_89
    goto :goto_88
.end method
