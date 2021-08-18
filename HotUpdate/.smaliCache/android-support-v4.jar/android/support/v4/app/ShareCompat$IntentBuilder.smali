.class public Landroid/support/v4/app/ShareCompat$IntentBuilder;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserTitle:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "launchingActivity"    # Landroid/app/Activity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 284
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 287
    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 347
    .local p2, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "currentAddresses":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    array-length v2, v0

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 349
    .local v2, "currentLength":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 350
    .local v3, "finalAddresses":[Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 351
    if-eqz v0, :cond_1f

    .line 352
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_1f
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "add"    # [Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "old":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    array-length v3, v1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 362
    .local v3, "oldLength":I
    :goto_e
    array-length v4, p2

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 363
    .local v4, "result":[Ljava/lang/String;
    if-eqz v1, :cond_17

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    :cond_17
    array-length v5, p2

    invoke-static {p2, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 2
    .param p0, "launchingActivity"    # Landroid/app/Activity;

    .line 278
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentBuilder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public addEmailBcc(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 608
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 611
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    return-object p0
.end method

.method public addEmailBcc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "addresses"    # [Ljava/lang/String;

    .line 623
    const-string v0, "android.intent.extra.BCC"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 624
    return-object p0
.end method

.method public addEmailCc(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 571
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public addEmailCc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "addresses"    # [Ljava/lang/String;

    .line 583
    const-string v0, "android.intent.extra.CC"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    return-object p0
.end method

.method public addEmailTo(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 531
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    return-object p0
.end method

.method public addEmailTo([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "addresses"    # [Ljava/lang/String;

    .line 543
    const-string v0, "android.intent.extra.EMAIL"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 544
    return-object p0
.end method

.method public addStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 5
    .param p1, "streamUri"    # Landroid/net/Uri;

    .line 489
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 490
    .local v0, "currentStream":Landroid/net/Uri;
    if-nez v0, :cond_11

    .line 491
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v1

    return-object v1

    .line 493
    :cond_11
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v2, :cond_1c

    .line 494
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 496
    :cond_1c
    if-eqz v0, :cond_28

    .line 497
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_28
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    return-object p0
.end method

.method public createChooserIntent()Landroid/content/Intent;
    .registers 3

    .line 376
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .line 343
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 9

    .line 299
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 300
    const-string v2, "android.intent.extra.EMAIL"

    invoke-direct {p0, v2, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 301
    iput-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 303
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 304
    const-string v2, "android.intent.extra.CC"

    invoke-direct {p0, v2, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 305
    iput-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 307
    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 308
    const-string v2, "android.intent.extra.BCC"

    invoke-direct {p0, v2, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 309
    iput-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 313
    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    move v0, v2

    .line 314
    .local v0, "needsSendMultiple":Z
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 316
    .local v2, "isSendMultiple":Z
    const-string v5, "android.intent.extra.STREAM"

    if-nez v0, :cond_69

    if-eqz v2, :cond_69

    .line 319
    iget-object v6, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v6, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v6, :cond_62

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_62

    .line 321
    iget-object v6, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_67

    .line 323
    :cond_62
    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 325
    :goto_67
    iput-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 328
    :cond_69
    if-eqz v0, :cond_89

    if-nez v2, :cond_89

    .line 331
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    .line 333
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_89

    .line 335
    :cond_84
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 339
    :cond_89
    :goto_89
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v1
.end method

.method public setChooserTitle(I)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "resId"    # I

    .line 410
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 399
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    .line 400
    return-object p0
.end method

.method public setEmailBcc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "addresses"    # [Ljava/lang/String;

    .line 596
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    return-object p0
.end method

.method public setEmailCc([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "addresses"    # [Ljava/lang/String;

    .line 556
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    return-object p0
.end method

.method public setEmailTo([Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "addresses"    # [Ljava/lang/String;

    .line 513
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 516
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    return-object p0
.end method

.method public setHtmlText(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "htmlText"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 453
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;

    .line 455
    :cond_18
    return-object p0
.end method

.method public setStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "streamUri"    # Landroid/net/Uri;

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 470
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 473
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "subject"    # Ljava/lang/String;

    .line 635
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 434
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 435
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    return-object p0
.end method

.method public startChooser()V
    .registers 3

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method
