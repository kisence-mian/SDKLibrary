.class public Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "parent"    # Landroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v13, 0x0

    .line 510
    .local v13, "anim":Landroid/animation/Animator;
    const/4 v15, 0x0

    .line 514
    .local v15, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    .line 516
    .local v16, "depth":I
    :cond_6
    :goto_6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_17

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_f2

    :cond_17
    const/4 v4, 0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_f2

    .line 519
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_6

    .line 523
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 524
    .local v20, "name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 526
    .local v17, "gotValues":Z
    const-string v4, "objectAnimator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p7

    move-object/from16 v9, p3

    .line 527
    invoke-static/range {v4 .. v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 552
    :goto_41
    if-eqz p5, :cond_6

    if-nez v17, :cond_6

    .line 553
    if-nez v15, :cond_4c

    .line 554
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .restart local v15    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4c
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 528
    :cond_50
    const-string v4, "animator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 529
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v9, p7

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v13

    goto :goto_41

    .line 530
    :cond_6c
    const-string v4, "set"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 531
    new-instance v13, Landroid/animation/AnimatorSet;

    .end local v13    # "anim":Landroid/animation/Animator;
    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    .restart local v13    # "anim":Landroid/animation/Animator;
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 535
    .local v12, "a":Landroid/content/res/TypedArray;
    const-string v4, "ordering"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v12, v0, v4, v5, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    .local v10, "ordering":I
    move-object v9, v13

    .line 538
    check-cast v9, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v11, p7

    invoke-static/range {v4 .. v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 540
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_41

    .line 541
    .end local v10    # "ordering":I
    .end local v12    # "a":Landroid/content/res/TypedArray;
    :cond_a7
    const-string v4, "propertyValuesHolder"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 543
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    .line 544
    .local v22, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v22, :cond_d1

    if-eqz v13, :cond_d1

    instance-of v4, v13, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_d1

    move-object v4, v13

    .line 545
    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 547
    :cond_d1
    const/16 v17, 0x1

    .line 548
    goto/16 :goto_41

    .line 549
    .end local v22    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_d5
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    .end local v17    # "gotValues":Z
    .end local v20    # "name":Ljava/lang/String;
    :cond_f2
    if-eqz p5, :cond_11c

    if-eqz v15, :cond_11c

    .line 560
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v14, v4, [Landroid/animation/Animator;

    .line 561
    .local v14, "animsArray":[Landroid/animation/Animator;
    const/16 v18, 0x0

    .line 562
    .local v18, "index":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_102
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_115

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 563
    .local v12, "a":Landroid/animation/Animator;
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "index":I
    .local v19, "index":I
    aput-object v12, v14, v18

    move/from16 v18, v19

    .line 564
    .end local v19    # "index":I
    .restart local v18    # "index":I
    goto :goto_102

    .line 565
    .end local v12    # "a":Landroid/animation/Animator;
    :cond_115
    if-nez p6, :cond_11d

    .line 566
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 571
    .end local v14    # "animsArray":[Landroid/animation/Animator;
    .end local v18    # "index":I
    :cond_11c
    :goto_11c
    return-object v13

    .line 568
    .restart local v14    # "animsArray":[Landroid/animation/Animator;
    .restart local v18    # "index":I
    :cond_11d
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_11c
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .prologue
    .line 779
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 780
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 783
    :goto_c
    return-object v0

    .line 781
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    .line 782
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c

    .line 783
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 9
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 806
    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    .line 807
    .local v0, "count":I
    int-to-float v3, v0

    div-float v2, p1, v3

    .line 808
    .local v2, "increment":F
    move v1, p2

    .local v1, "i":I
    :goto_8
    if-gt v1, p3, :cond_1b

    .line 809
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 811
    :cond_1b
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 673
    if-eqz p0, :cond_5

    array-length v3, p0

    if-nez v3, :cond_6

    .line 684
    :cond_5
    return-void

    .line 676
    :cond_6
    const-string v3, "AnimatorInflater"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    array-length v0, p0

    .line 678
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_5

    .line 679
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 680
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string v4, "AnimatorInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": fraction "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 681
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_5d

    const-string v3, "null"

    :goto_35
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", value : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 682
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    :goto_4f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 681
    :cond_5d
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_35

    .line 682
    :cond_66
    const-string v3, "null"

    goto :goto_4f
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 26
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 207
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 208
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_96

    const/4 v7, 0x1

    .line 209
    .local v7, "hasFrom":Z
    :goto_b
    if-eqz v7, :cond_99

    iget v5, v14, Landroid/util/TypedValue;->type:I

    .line 210
    .local v5, "fromType":I
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 211
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_9c

    const/4 v8, 0x1

    .line 212
    .local v8, "hasTo":Z
    :goto_1a
    if-eqz v8, :cond_9f

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .line 214
    .local v13, "toType":I
    :goto_1e
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    .line 216
    if-eqz v7, :cond_2e

    invoke-static {v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-nez v18, :cond_36

    :cond_2e
    if-eqz v8, :cond_a2

    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_a2

    .line 217
    :cond_36
    const/16 p1, 0x3

    .line 223
    :cond_38
    :goto_38
    if-nez p1, :cond_a5

    const/4 v6, 0x1

    .line 225
    .local v6, "getFloats":Z
    :goto_3b
    const/4 v11, 0x0

    .line 227
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_f1

    .line 228
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, "toString":Ljava/lang/String;
    invoke-static {v4}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v9

    .line 234
    .local v9, "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    invoke-static {v12}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v10

    .line 235
    .local v10, "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    if-nez v9, :cond_60

    if-eqz v10, :cond_bf

    .line 236
    :cond_60
    if-eqz v9, :cond_d5

    .line 237
    new-instance v3, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v3}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    .line 238
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_c0

    .line 239
    invoke-static {v9, v10}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v18

    if-nez v18, :cond_a7

    .line 240
    new-instance v18, Landroid/view/InflateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Can\'t morph from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 208
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_96
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 209
    .restart local v7    # "hasFrom":Z
    :cond_99
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 211
    .restart local v5    # "fromType":I
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_9c
    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 212
    .restart local v8    # "hasTo":Z
    :cond_9f
    const/4 v13, 0x0

    goto/16 :goto_1e

    .line 219
    .restart local v13    # "toType":I
    :cond_a2
    const/16 p1, 0x0

    goto :goto_38

    .line 223
    :cond_a5
    const/4 v6, 0x0

    goto :goto_3b

    .line 243
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v6    # "getFloats":Z
    .restart local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a7
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 331
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_bf
    :goto_bf
    return-object v11

    .line 246
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_c0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_bf

    .line 249
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_d5
    if-eqz v10, :cond_bf

    .line 250
    new-instance v3, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v3}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    .line 251
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_bf

    .line 256
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_f1
    const/4 v3, 0x0

    .line 258
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_fe

    .line 260
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    .line 262
    :cond_fe
    if-eqz v6, :cond_1ac

    .line 265
    if-eqz v7, :cond_178

    .line 266
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_149

    .line 267
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 271
    .local v16, "valueFrom":F
    :goto_114
    if-eqz v8, :cond_163

    .line 272
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_156

    .line 273
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 277
    .local v17, "valueTo":F
    :goto_128
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 326
    .end local v16    # "valueFrom":F
    .end local v17    # "valueTo":F
    :cond_140
    :goto_140
    if-eqz v11, :cond_bf

    if-eqz v3, :cond_bf

    .line 327
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_bf

    .line 269
    :cond_149
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto :goto_114

    .line 275
    :cond_156
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_128

    .line 280
    .end local v17    # "valueTo":F
    :cond_163
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_140

    .line 283
    .end local v16    # "valueFrom":F
    :cond_178
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_19f

    .line 284
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 288
    .restart local v17    # "valueTo":F
    :goto_18a
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_140

    .line 286
    .end local v17    # "valueTo":F
    :cond_19f
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_18a

    .line 293
    .end local v17    # "valueTo":F
    :cond_1ac
    if-eqz v7, :cond_24e

    .line 294
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_1f8

    .line 295
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 301
    .local v16, "valueFrom":I
    :goto_1c5
    if-eqz v8, :cond_238

    .line 302
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_218

    .line 303
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 309
    .local v17, "valueTo":I
    :goto_1de
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_140

    .line 296
    .end local v16    # "valueFrom":I
    .end local v17    # "valueTo":I
    :cond_1f8
    invoke-static {v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_20b

    .line 297
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_1c5

    .line 299
    .end local v16    # "valueFrom":I
    :cond_20b
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_1c5

    .line 304
    :cond_218
    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_22b

    .line 305
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_1de

    .line 307
    .end local v17    # "valueTo":I
    :cond_22b
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_1de

    .line 311
    .end local v17    # "valueTo":I
    :cond_238
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_140

    .line 314
    .end local v16    # "valueFrom":I
    :cond_24e
    if-eqz v8, :cond_140

    .line 315
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_27d

    .line 316
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 322
    .restart local v17    # "valueTo":I
    :goto_267
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_140

    .line 317
    .end local v17    # "valueTo":I
    :cond_27d
    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_290

    .line 318
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_267

    .line 320
    .end local v17    # "valueTo":I
    :cond_290
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_267
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 11
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 655
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 656
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_29

    move v1, v2

    .line 657
    .local v1, "hasFrom":Z
    :goto_9
    if-eqz v1, :cond_2b

    iget v0, v4, Landroid/util/TypedValue;->type:I

    .line 658
    .local v0, "fromType":I
    :goto_d
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 659
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_2d

    .line 660
    .local v2, "hasTo":Z
    :goto_13
    if-eqz v2, :cond_2f

    iget v3, v5, Landroid/util/TypedValue;->type:I

    .line 664
    .local v3, "toType":I
    :goto_17
    if-eqz v1, :cond_1f

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_27

    :cond_1f
    if-eqz v2, :cond_31

    invoke-static {v3}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 665
    :cond_27
    const/4 v6, 0x3

    .line 669
    .local v6, "valueType":I
    :goto_28
    return v6

    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_29
    move v1, v7

    .line 656
    goto :goto_9

    .restart local v1    # "hasFrom":Z
    :cond_2b
    move v0, v7

    .line 657
    goto :goto_d

    .restart local v0    # "fromType":I
    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_2d
    move v2, v7

    .line 659
    goto :goto_13

    .restart local v2    # "hasTo":Z
    :cond_2f
    move v3, v7

    .line 660
    goto :goto_17

    .line 667
    .restart local v3    # "toType":I
    :cond_31
    const/4 v6, 0x0

    .restart local v6    # "valueType":I
    goto :goto_28
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    .line 636
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p0, p1, p2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 639
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v4, "value"

    invoke-static {v0, p3, v4, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v2

    .line 641
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 644
    .local v1, "hasValue":Z
    :cond_10
    if-eqz v1, :cond_1f

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 645
    const/4 v3, 0x3

    .line 649
    .local v3, "valueType":I
    :goto_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 650
    return v3

    .line 647
    .end local v3    # "valueType":I
    :cond_1f
    const/4 v3, 0x0

    .restart local v3    # "valueType":I
    goto :goto_1b
.end method

.method private static isColorType(I)Z
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 917
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_b

    .line 101
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 105
    .local v0, "objectAnimator":Landroid/animation/Animator;
    :goto_a
    return-object v0

    .line 103
    .end local v0    # "objectAnimator":Landroid/animation/Animator;
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "objectAnimator":Landroid/animation/Animator;
    goto :goto_a
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 132
    invoke-static {p0, p1, p2, v2, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_37
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    move-result-object v0

    .line 147
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e
    return-object v0

    .line 134
    .end local v0    # "animator":Landroid/animation/Animator;
    :catch_f
    move-exception v1

    .line 135
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_10
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    throw v3
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_30

    .line 147
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_30
    move-exception v4

    if-eqz v2, :cond_36

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_36
    throw v4

    .line 140
    :catch_37
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/io/IOException;
    :try_start_38
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    throw v3
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_30
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "anim"    # Landroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 890
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {p1, p2, p3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 892
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {p1, p2, p3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 895
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-nez p4, :cond_14

    .line 896
    new-instance p4, Landroid/animation/ValueAnimator;

    .end local p4    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 899
    .restart local p4    # "anim":Landroid/animation/ValueAnimator;
    :cond_14
    invoke-static {p4, v0, v1, p5, p6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 902
    const-string v4, "interpolator"

    invoke-static {v0, p6, v4, v5, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 904
    .local v3, "resID":I
    if-lez v3, :cond_26

    .line 905
    invoke-static {p0, v3}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 906
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 910
    if-eqz v1, :cond_2e

    .line 911
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 913
    :cond_2e
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "valueType"    # I
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    sget-object v10, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    move-object/from16 v0, p3

    invoke-static {p1, p2, v0, v10}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 821
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 823
    .local v6, "keyframe":Landroid/animation/Keyframe;
    const-string v10, "fraction"

    const/4 v11, 0x3

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 826
    .local v2, "fraction":F
    const-string v10, "value"

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v7

    .line 828
    .local v7, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v7, :cond_4d

    const/4 v3, 0x1

    .line 829
    .local v3, "hasValue":Z
    :goto_20
    const/4 v10, 0x4

    move/from16 v0, p4

    if-ne v0, v10, :cond_31

    .line 832
    if-eqz v3, :cond_4f

    iget v10, v7, Landroid/util/TypedValue;->type:I

    invoke-static {v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 833
    const/16 p4, 0x3

    .line 839
    :cond_31
    :goto_31
    if-eqz v3, :cond_70

    .line 840
    packed-switch p4, :pswitch_data_7c

    .line 858
    :goto_36
    :pswitch_36
    const-string v10, "interpolator"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .line 860
    .local v8, "resID":I
    if-lez v8, :cond_49

    .line 861
    invoke-static {p0, v8}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 862
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v6, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 864
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 866
    return-object v6

    .line 828
    .end local v3    # "hasValue":Z
    .end local v8    # "resID":I
    :cond_4d
    const/4 v3, 0x0

    goto :goto_20

    .line 835
    .restart local v3    # "hasValue":Z
    :cond_4f
    const/16 p4, 0x0

    goto :goto_31

    .line 842
    :pswitch_52
    const-string v10, "value"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    .line 844
    .local v9, "value":F
    invoke-static {v2, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 845
    goto :goto_36

    .line 848
    .end local v9    # "value":F
    :pswitch_61
    const-string v10, "value"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 850
    .local v4, "intValue":I
    invoke-static {v2, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_36

    .line 854
    .end local v4    # "intValue":I
    :cond_70
    if-nez p4, :cond_77

    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v6

    .line 855
    :goto_76
    goto :goto_36

    :cond_77
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_76

    .line 840
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_61
        :pswitch_36
        :pswitch_61
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pathErrorScale"    # F
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 872
    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    .local v4, "anim":Landroid/animation/ObjectAnimator;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 874
    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 876
    return-object v4
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "propertyName"    # Ljava/lang/String;
    .param p5, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    const/16 v24, 0x0

    .line 693
    .local v24, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x0

    .line 696
    .local v18, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_4
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .local v23, "type":I
    const/4 v3, 0x3

    move/from16 v0, v23

    if-eq v0, v3, :cond_59

    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_59

    .line 698
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 699
    .local v20, "name":Ljava/lang/String;
    const-string v3, "keyframe"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 700
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_33

    .line 701
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v3, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p5

    .line 704
    :cond_33
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p5

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v16

    .line 706
    .local v16, "keyframe":Landroid/animation/Keyframe;
    if-eqz v16, :cond_55

    .line 707
    if-nez v18, :cond_4e

    .line 708
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .restart local v18    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_4e
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_55
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_4

    .line 717
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v20    # "name":Ljava/lang/String;
    :cond_59
    if-eqz v18, :cond_136

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "count":I
    if-lez v9, :cond_136

    .line 723
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Keyframe;

    .line 724
    .local v12, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/animation/Keyframe;

    .line 725
    .local v19, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual/range {v19 .. v19}, Landroid/animation/Keyframe;->getFraction()F

    move-result v10

    .line 726
    .local v10, "endFraction":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_8a

    .line 727
    const/4 v3, 0x0

    cmpg-float v3, v10, v3

    if-gez v3, :cond_c0

    .line 728
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 734
    :cond_8a
    :goto_8a
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    .line 735
    .local v21, "startFraction":F
    const/4 v3, 0x0

    cmpl-float v3, v21, v3

    if-eqz v3, :cond_9c

    .line 736
    const/4 v3, 0x0

    cmpg-float v3, v21, v3

    if-gez v3, :cond_d4

    .line 737
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 743
    :cond_9c
    :goto_9c
    new-array v0, v9, [Landroid/animation/Keyframe;

    move-object/from16 v17, v0

    .line 744
    .local v17, "keyframeArray":[Landroid/animation/Keyframe;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 745
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a8
    if-ge v14, v9, :cond_120

    .line 746
    aget-object v16, v17, v14

    .line 747
    .restart local v16    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual/range {v16 .. v16}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_bd

    .line 748
    if-nez v14, :cond_e2

    .line 749
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 745
    :cond_bd
    :goto_bd
    add-int/lit8 v14, v14, 0x1

    goto :goto_a8

    .line 730
    .end local v14    # "i":I
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v21    # "startFraction":F
    :cond_c0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 731
    add-int/lit8 v9, v9, 0x1

    goto :goto_8a

    .line 739
    .restart local v21    # "startFraction":F
    :cond_d4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 740
    add-int/lit8 v9, v9, 0x1

    goto :goto_9c

    .line 750
    .restart local v14    # "i":I
    .restart local v16    # "keyframe":Landroid/animation/Keyframe;
    .restart local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    :cond_e2
    add-int/lit8 v3, v9, -0x1

    if-ne v14, v3, :cond_ee

    .line 751
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_bd

    .line 755
    :cond_ee
    move/from16 v22, v14

    .line 756
    .local v22, "startIndex":I
    move v11, v14

    .line 757
    .local v11, "endIndex":I
    add-int/lit8 v15, v22, 0x1

    .local v15, "j":I
    :goto_f3
    add-int/lit8 v3, v9, -0x1

    if-ge v15, v3, :cond_102

    .line 758
    aget-object v3, v17, v15

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_11c

    .line 763
    :cond_102
    add-int/lit8 v3, v11, 0x1

    aget-object v3, v17, v3

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    add-int/lit8 v4, v22, -0x1

    aget-object v4, v17, v4

    .line 764
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v13, v3, v4

    .line 765
    .local v13, "gap":F
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v13, v1, v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_bd

    .line 761
    .end local v13    # "gap":F
    :cond_11c
    move v11, v15

    .line 757
    add-int/lit8 v15, v15, 0x1

    goto :goto_f3

    .line 769
    .end local v11    # "endIndex":I
    .end local v15    # "j":I
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v22    # "startIndex":I
    :cond_120
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v24

    .line 770
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_136

    .line 771
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 775
    .end local v9    # "count":I
    .end local v10    # "endFraction":F
    .end local v12    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v14    # "i":I
    .end local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v19    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v21    # "startFraction":F
    :cond_136
    return-object v24
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v15, 0x0

    .line 579
    .local v15, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    .local v14, "type":I
    const/4 v3, 0x3

    if-eq v14, v3, :cond_64

    const/4 v3, 0x1

    if-eq v14, v3, :cond_64

    .line 582
    const/4 v3, 0x2

    if-eq v14, v3, :cond_12

    .line 583
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 587
    :cond_12
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 589
    .local v12, "name":Ljava/lang/String;
    const-string v3, "propertyValuesHolder"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 590
    sget-object v3, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 593
    .local v9, "a":Landroid/content/res/TypedArray;
    const-string v3, "propertyName"

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-static {v9, v0, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "propertyName":Ljava/lang/String;
    const-string v3, "valueType"

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-static {v9, v0, v3, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .local v8, "valueType":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 599
    invoke-static/range {v3 .. v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 601
    .local v13, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v13, :cond_51

    .line 602
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v9, v8, v3, v4, v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 607
    :cond_51
    if-eqz v13, :cond_5d

    .line 608
    if-nez v15, :cond_5a

    .line 609
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .restart local v15    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :cond_5a
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_5d
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 616
    .end local v7    # "propertyName":Ljava/lang/String;
    .end local v8    # "valueType":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_60
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 619
    .end local v12    # "name":Ljava/lang/String;
    :cond_64
    const/16 v16, 0x0

    .line 620
    .local v16, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v15, :cond_7e

    .line 621
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 622
    .local v10, "count":I
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    .line 623
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_71
    if-ge v11, v10, :cond_7e

    .line 624
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v16, v11

    .line 623
    add-int/lit8 v11, v11, 0x1

    goto :goto_71

    .line 627
    .end local v10    # "count":I
    .end local v11    # "i":I
    :cond_7e
    return-object v16
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 345
    const-string v6, "duration"

    const/4 v7, 0x1

    const/16 v8, 0x12c

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v0, v6

    .line 347
    .local v0, "duration":J
    const-string v6, "startOffset"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v4, v6

    .line 349
    .local v4, "startDelay":J
    const-string v6, "valueType"

    const/4 v7, 0x7

    const/4 v8, 0x4

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 353
    .local v3, "valueType":I
    const-string v6, "valueFrom"

    invoke-static {p4, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    const-string v6, "valueTo"

    .line 354
    invoke-static {p4, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 355
    const/4 v6, 0x4

    if-ne v3, v6, :cond_34

    .line 356
    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-static {p1, v6, v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 360
    :cond_34
    const/4 v6, 0x5

    const/4 v7, 0x6

    const-string v8, ""

    invoke-static {p1, v3, v6, v7, v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 363
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_47

    .line 364
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 367
    .end local v2    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_47
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 370
    const-string v6, "repeatCount"

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 372
    const-string v6, "repeatMode"

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 375
    if-eqz p2, :cond_68

    .line 376
    invoke-static {p0, p2, v3, p3, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 378
    :cond_68
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x2

    .line 390
    move-object v0, p0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 391
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-string v6, "pathData"

    const/4 v7, 0x1

    invoke-static {p1, p4, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "pathData":Ljava/lang/String;
    if-eqz v2, :cond_4c

    .line 403
    const-string v6, "propertyXName"

    invoke-static {p1, p4, v6, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "propertyXName":Ljava/lang/String;
    const-string v6, "propertyYName"

    const/4 v7, 0x3

    invoke-static {p1, p4, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "propertyYName":Ljava/lang/String;
    if-eq p2, v8, :cond_1f

    const/4 v6, 0x4

    if-ne p2, v6, :cond_20

    .line 412
    :cond_1f
    const/4 p2, 0x0

    .line 414
    :cond_20
    if-nez v4, :cond_41

    if-nez v5, :cond_41

    .line 415
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 418
    :cond_41
    invoke-static {v2}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 419
    .local v1, "path":Landroid/graphics/Path;
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, p3

    invoke-static {v1, v0, v6, v4, v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v4    # "propertyXName":Ljava/lang/String;
    .end local v5    # "propertyYName":Ljava/lang/String;
    :goto_4b
    return-void

    .line 422
    :cond_4c
    const-string v6, "propertyName"

    const/4 v7, 0x0

    .line 423
    invoke-static {p1, p4, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;
    .param p2, "precision"    # F
    .param p3, "propertyXName"    # Ljava/lang/String;
    .param p4, "propertyYName"    # Ljava/lang/String;

    .prologue
    .line 436
    new-instance v8, Landroid/graphics/PathMeasure;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 437
    .local v8, "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v14, 0x0

    .line 440
    .local v14, "totalLength":F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v3, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1c
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    .line 444
    .local v10, "pathLength":F
    add-float/2addr v14, v10

    .line 445
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v17

    if-nez v17, :cond_1c

    .line 450
    new-instance v11, Landroid/graphics/PathMeasure;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 452
    .local v11, "pathMeasure":Landroid/graphics/PathMeasure;
    const/16 v17, 0x64

    div-float v18, v14, p2

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 454
    .local v9, "numPoints":I
    new-array v6, v9, [F

    .line 455
    .local v6, "mX":[F
    new-array v7, v9, [F

    .line 456
    .local v7, "mY":[F
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [F

    .line 458
    .local v12, "position":[F
    const/4 v2, 0x0

    .line 459
    .local v2, "contourIndex":I
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v13, v14, v17

    .line 460
    .local v13, "step":F
    const/4 v4, 0x0

    .line 465
    .local v4, "currentDistance":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_60
    if-ge v5, v9, :cond_aa

    .line 466
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v17, v4, v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v12, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 469
    const/16 v17, 0x0

    aget v17, v12, v17

    aput v17, v6, v5

    .line 470
    const/16 v17, 0x1

    aget v17, v12, v17

    aput v17, v7, v5

    .line 471
    add-float/2addr v4, v13

    .line 472
    add-int/lit8 v17, v2, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a7

    add-int/lit8 v17, v2, 0x1

    .line 473
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    cmpl-float v17, v4, v17

    if-lez v17, :cond_a7

    .line 474
    add-int/lit8 v2, v2, 0x1

    .line 475
    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 465
    :cond_a7
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 480
    :cond_aa
    const/4 v15, 0x0

    .line 481
    .local v15, "x":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x0

    .line 482
    .local v16, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz p3, :cond_b5

    .line 483
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 485
    :cond_b5
    if-eqz p4, :cond_bd

    .line 486
    move-object/from16 v0, p4

    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 488
    :cond_bd
    if-nez v15, :cond_d3

    .line 489
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 495
    :goto_d2
    return-void

    .line 490
    :cond_d3
    if-nez v16, :cond_e9

    .line 491
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_d2

    .line 493
    :cond_e9
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    aput-object v16, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_d2
.end method
