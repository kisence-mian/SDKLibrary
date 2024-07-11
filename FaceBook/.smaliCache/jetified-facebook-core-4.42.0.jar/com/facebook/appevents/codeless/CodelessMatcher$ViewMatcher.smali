.class public Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewMatcher"
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private delegateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p4, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 206
    .local p3, "delegateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    .line 208
    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->handler:Landroid/os/Handler;

    .line 209
    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    .line 210
    iput-object p4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    .line 212
    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

.method private attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .registers 14
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 451
    if-nez p3, :cond_3

    .line 452
    return-void

    .line 455
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_a

    .line 457
    return-void

    .line 461
    :cond_a
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->findRCTRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "RCTRootView":Landroid/view/View;
    if-eqz v1, :cond_1a

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 463
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    .line 464
    return-void

    .line 468
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.facebook.react"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 469
    return-void

    .line 472
    :cond_2b
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "mapKey":Ljava/lang/String;
    nop

    .line 474
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v3

    .line 475
    .local v3, "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3a

    const/4 v6, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v6, 0x0

    .line 476
    .local v6, "delegateExists":Z
    :goto_3b
    if-eqz v6, :cond_43

    instance-of v7, v3, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    if-eqz v7, :cond_43

    const/4 v7, 0x1

    goto :goto_44

    :cond_43
    const/4 v7, 0x0

    .line 478
    .local v7, "isCodelessDelegate":Z
    :goto_44
    if-eqz v7, :cond_50

    move-object v8, v3

    check-cast v8, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    .line 481
    invoke-virtual {v8}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->getSupportCodelessLogging()Z

    move-result v8

    if-eqz v8, :cond_50

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    .line 482
    .local v4, "delegateSupportCodelessLogging":Z
    :goto_51
    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    if-eqz v6, :cond_5f

    if-eqz v7, :cond_5f

    if-nez v4, :cond_70

    .line 485
    :cond_5f
    nop

    .line 486
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->getAccessibilityDelegate(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    move-result-object v5

    .line 488
    .local v5, "delegate":Landroid/view/View$AccessibilityDelegate;
    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 489
    iget-object v8, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getEventName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Lcom/facebook/FacebookException; {:try_start_3 .. :try_end_70} :catch_71

    .line 493
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "RCTRootView":Landroid/view/View;
    .end local v2    # "mapKey":Ljava/lang/String;
    .end local v3    # "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    .end local v4    # "delegateSupportCodelessLogging":Z
    .end local v5    # "delegate":Landroid/view/View$AccessibilityDelegate;
    .end local v6    # "delegateExists":Z
    .end local v7    # "isCodelessDelegate":Z
    :cond_70
    goto :goto_7b

    .line 491
    :catch_71
    move-exception v0

    .line 492
    .local v0, "e":Lcom/facebook/FacebookException;
    # getter for: Lcom/facebook/appevents/codeless/CodelessMatcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to attach auto logging event listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0    # "e":Lcom/facebook/FacebookException;
    :goto_7b
    return-void
.end method

.method private attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .registers 14
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "RCTRootView"    # Landroid/view/View;
    .param p4, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 500
    if-nez p4, :cond_3

    .line 501
    return-void

    .line 503
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_56

    invoke-static {v0, p3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_56

    .line 508
    :cond_10
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "mapKey":Ljava/lang/String;
    nop

    .line 510
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    .line 511
    .local v2, "existingListener":Landroid/view/View$OnTouchListener;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    const/4 v5, 0x1

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    .line 512
    .local v5, "listenerExists":Z
    :goto_20
    if-eqz v5, :cond_28

    instance-of v6, v2, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    if-eqz v6, :cond_28

    const/4 v6, 0x1

    goto :goto_29

    :cond_28
    const/4 v6, 0x0

    .line 514
    .local v6, "isCodelessListener":Z
    :goto_29
    if-eqz v6, :cond_35

    move-object v7, v2

    check-cast v7, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    .line 516
    invoke-virtual {v7}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->getSupportCodelessLogging()Z

    move-result v7

    if-eqz v7, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    .line 517
    .local v3, "listenerSupportCodelessLogging":Z
    :goto_36
    iget-object v4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    if-eqz v5, :cond_44

    if-eqz v6, :cond_44

    if-nez v3, :cond_55

    .line 520
    :cond_44
    nop

    .line 521
    invoke-static {p4, p2, v0}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;->getOnTouchListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    move-result-object v4

    .line 523
    .local v4, "listener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    iget-object v7, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {p4}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getEventName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .end local v4    # "listener":Landroid/view/View$OnTouchListener;
    :cond_55
    return-void

    .line 505
    .end local v1    # "mapKey":Ljava/lang/String;
    .end local v2    # "existingListener":Landroid/view/View$OnTouchListener;
    .end local v3    # "listenerSupportCodelessLogging":Z
    .end local v5    # "listenerExists":Z
    .end local v6    # "isCodelessListener":Z
    :cond_56
    :goto_56
    return-void
.end method

.method public static findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .registers 23
    .param p0, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p1, "view"    # Landroid/view/View;
    .param p3, "level"    # I
    .param p4, "index"    # I
    .param p5, "mapKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;",
            ">;"
        }
    .end annotation

    .line 294
    .local p2, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .end local p5    # "mapKey":Ljava/lang/String;
    .local v2, "mapKey":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    if-nez v0, :cond_29

    .line 297
    return-object v3

    .line 300
    :cond_29
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_3b

    .line 302
    new-instance v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {v4, v0, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p4

    goto/16 :goto_aa

    .line 304
    :cond_3b
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/facebook/appevents/codeless/internal/PathComponent;

    .line 305
    .local v11, "pathElement":Lcom/facebook/appevents/codeless/internal/PathComponent;
    iget-object v5, v11, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 307
    .local v4, "parent":Landroid/view/ViewParent;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_7f

    .line 308
    move-object v12, v4

    check-cast v12, Landroid/view/ViewGroup;

    .line 309
    .local v12, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v12}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v13

    .line 310
    .local v13, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 311
    .local v14, "childCount":I
    const/4 v5, 0x0

    move v15, v5

    .local v15, "i":I
    :goto_61
    if-ge v15, v14, :cond_7f

    .line 312
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/view/View;

    .line 313
    .local v16, "child":Landroid/view/View;
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move-object/from16 v7, p2

    move v9, v15

    move-object v10, v2

    invoke-static/range {v5 .. v10}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 320
    .local v5, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    .end local v5    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    .end local v16    # "child":Landroid/view/View;
    add-int/lit8 v15, v15, 0x1

    goto :goto_61

    .line 324
    .end local v12    # "viewGroup":Landroid/view/ViewGroup;
    .end local v13    # "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v14    # "childCount":I
    .end local v15    # "i":I
    :cond_7f
    return-object v3

    .line 325
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_80
    iget-object v5, v11, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 327
    new-instance v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {v4, v0, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object v3

    .line 332
    :cond_91
    move/from16 v4, p4

    invoke-static {v0, v11, v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 333
    return-object v3

    .line 337
    :cond_9a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_aa

    .line 338
    new-instance v5, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {v5, v0, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v11    # "pathElement":Lcom/facebook/appevents/codeless/internal/PathComponent;
    :cond_aa
    :goto_aa
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d7

    .line 343
    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    .line 344
    .local v11, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v11}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v12

    .line 345
    .local v12, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 346
    .local v13, "childCount":I
    const/4 v5, 0x0

    move v14, v5

    .local v14, "i":I
    :goto_bb
    if-ge v14, v13, :cond_d7

    .line 347
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/view/View;

    .line 348
    .local v15, "child":Landroid/view/View;
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v5, p0

    move-object v6, v15

    move-object/from16 v7, p2

    move v9, v14

    move-object v10, v2

    invoke-static/range {v5 .. v10}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 355
    .restart local v5    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    .end local v5    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    .end local v15    # "child":Landroid/view/View;
    add-int/lit8 v14, v14, 0x1

    goto :goto_bb

    .line 359
    .end local v11    # "viewGroup":Landroid/view/ViewGroup;
    .end local v12    # "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v13    # "childCount":I
    .end local v14    # "i":I
    :cond_d7
    return-object v3
.end method

.method private static findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;
    .registers 6
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 439
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 440
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 441
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_19

    .line 442
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v3    # "child":Landroid/view/View;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 445
    .end local v2    # "i":I
    :cond_1c
    return-object v0
.end method

.method private static isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z
    .registers 9
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "pathElement"    # Lcom/facebook/appevents/codeless/internal/PathComponent;
    .param p2, "index"    # I

    .line 366
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    if-eq p2, v0, :cond_b

    .line 367
    return v1

    .line 370
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_48

    .line 371
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v3, ".*android\\..*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 372
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "names":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_46

    .line 374
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v3, v0, v3

    .line 375
    .local v3, "SimpleName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 376
    return v1

    .line 378
    .end local v3    # "SimpleName":Ljava/lang/String;
    :cond_44
    nop

    .line 381
    .end local v0    # "names":[Ljava/lang/String;
    goto :goto_48

    .line 379
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_46
    return v1

    .line 382
    .end local v0    # "names":[Ljava/lang/String;
    :cond_47
    return v1

    .line 386
    :cond_48
    :goto_48
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 387
    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr v0, v3

    if-lez v0, :cond_5c

    .line 388
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->id:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v0, v3, :cond_5c

    .line 389
    return v1

    .line 393
    :cond_5c
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 394
    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr v0, v3

    if-lez v0, :cond_74

    .line 395
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->text:Ljava/lang/String;

    .line 396
    .local v0, "pathText":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 399
    return v1

    .line 403
    .end local v0    # "pathText":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :cond_74
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 404
    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr v0, v3

    const-string v3, ""

    if-lez v0, :cond_9b

    .line 405
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->description:Ljava/lang/String;

    .line 406
    .local v0, "pathDesc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_8b

    move-object v4, v3

    goto :goto_93

    .line 407
    :cond_8b
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_93
    nop

    .line 408
    .local v4, "targetDesc":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9b

    .line 409
    return v1

    .line 413
    .end local v0    # "pathDesc":Ljava/lang/String;
    .end local v4    # "targetDesc":Ljava/lang/String;
    :cond_9b
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v4, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 414
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v4

    and-int/2addr v0, v4

    if-lez v0, :cond_b3

    .line 415
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->hint:Ljava/lang/String;

    .line 416
    .local v0, "pathHint":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "targetHint":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 419
    return v1

    .line 423
    .end local v0    # "pathHint":Ljava/lang/String;
    .end local v4    # "targetHint":Ljava/lang/String;
    :cond_b3
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v4, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 424
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v4

    and-int/2addr v0, v4

    if-lez v0, :cond_d7

    .line 425
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->tag:Ljava/lang/String;

    .line 426
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c7

    goto :goto_cf

    .line 427
    :cond_c7
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_cf
    nop

    .line 428
    .local v3, "targetTag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 429
    return v1

    .line 433
    .end local v0    # "tag":Ljava/lang/String;
    .end local v3    # "targetTag":Ljava/lang/String;
    :cond_d7
    return v2
.end method

.method private startMatch()V
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 254
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 255
    .local v1, "binding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V

    .line 253
    .end local v1    # "binding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 258
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method


# virtual methods
.method public findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V
    .registers 10
    .param p1, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p2, "rootView"    # Landroid/view/View;

    .line 261
    if-eqz p1, :cond_49

    if-nez p2, :cond_5

    goto :goto_49

    .line 265
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 266
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 267
    return-void

    .line 270
    :cond_1c
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getViewPath()Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_29

    .line 273
    return-void

    .line 276
    :cond_29
    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 283
    .local v1, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 284
    .local v3, "view":Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    invoke-direct {p0, v3, p2, p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    .line 285
    .end local v3    # "view":Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    goto :goto_38

    .line 286
    :cond_48
    return-void

    .line 262
    .end local v0    # "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    .end local v1    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    :cond_49
    :goto_49
    return-void
.end method

.method public onGlobalLayout()V
    .registers 1

    .line 243
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    .line 244
    return-void
.end method

.method public onScrollChanged()V
    .registers 1

    .line 248
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    .line 249
    return-void
.end method

.method public run()V
    .registers 6

    .line 217
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "appId":Ljava/lang/String;
    nop

    .line 219
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 220
    .local v1, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_3d

    .line 224
    :cond_12
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getEventBindings()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/codeless/internal/EventBinding;->parseArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    .line 226
    if-eqz v2, :cond_3c

    .line 227
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 228
    .local v2, "rootView":Landroid/view/View;
    if-nez v2, :cond_29

    .line 229
    return-void

    .line 231
    :cond_29
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 232
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 233
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 234
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 237
    :cond_39
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    .line 239
    .end local v2    # "rootView":Landroid/view/View;
    .end local v3    # "observer":Landroid/view/ViewTreeObserver;
    :cond_3c
    return-void

    .line 221
    :cond_3d
    :goto_3d
    return-void
.end method
