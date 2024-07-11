.class public Landroidx/navigation/ActivityNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "ActivityNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/ActivityNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Destination"
.end annotation


# instance fields
.field private mDataPattern:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/ActivityNavigator$Destination;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p1, "activityNavigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/ActivityNavigator$Destination;>;"
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .registers 3
    .param p1, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    .line 211
    const-class v0, Landroidx/navigation/ActivityNavigator;

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/navigation/ActivityNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    .line 212
    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 326
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 327
    const/4 v0, 0x0

    return-object v0

    .line 329
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public final getData()Landroid/net/Uri;
    .registers 2

    .line 382
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getDataPattern()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mDataPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 2

    .line 272
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getTargetPackage()Ljava/lang/String;
    .registers 2

    .line 299
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 230
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/R$styleable;->ActivityNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/R$styleable;->ActivityNavigator_targetPackage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "targetPackage":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 235
    nop

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 235
    const-string v3, "${applicationId}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_20
    invoke-virtual {p0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setTargetPackage(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 239
    sget v2, Landroidx/navigation/R$styleable;->ActivityNavigator_android_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "className":Ljava/lang/String;
    if-eqz v2, :cond_51

    .line 241
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_49

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    :cond_49
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroidx/navigation/ActivityNavigator$Destination;->setComponentName(Landroid/content/ComponentName;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 246
    :cond_51
    sget v3, Landroidx/navigation/R$styleable;->ActivityNavigator_action:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/navigation/ActivityNavigator$Destination;->setAction(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 247
    sget v3, Landroidx/navigation/R$styleable;->ActivityNavigator_data:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "data":Ljava/lang/String;
    if-eqz v3, :cond_69

    .line 249
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/navigation/ActivityNavigator$Destination;->setData(Landroid/net/Uri;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 251
    :cond_69
    sget v4, Landroidx/navigation/R$styleable;->ActivityNavigator_dataPattern:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/navigation/ActivityNavigator$Destination;->setDataPattern(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 252
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    return-void
.end method

.method public final setAction(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    .line 342
    :cond_b
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    return-object p0
.end method

.method public final setComponentName(Landroid/content/ComponentName;)Landroidx/navigation/ActivityNavigator$Destination;
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 313
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    .line 316
    :cond_b
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 317
    return-object p0
.end method

.method public final setData(Landroid/net/Uri;)Landroidx/navigation/ActivityNavigator$Destination;
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 370
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    .line 373
    :cond_b
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 374
    return-object p0
.end method

.method public final setDataPattern(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;
    .registers 2
    .param p1, "dataPattern"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator$Destination;->mDataPattern:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroidx/navigation/ActivityNavigator$Destination;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 262
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    .line 263
    return-object p0
.end method

.method public final setTargetPackage(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    .line 290
    :cond_b
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Destination;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    return-object p0
.end method

.method supportsActions()Z
    .registers 2

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 421
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigator$Destination;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 422
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    if-eqz v0, :cond_1f

    .line 425
    const-string v2, " class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 428
    :cond_1f
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigator$Destination;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 430
    const-string v3, " action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .end local v2    # "action":Ljava/lang/String;
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
