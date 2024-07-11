.class final Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithCharSequenceMatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Landroid/view/View;",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private expectedText:Ljava/lang/String;

.field private final method:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x1
    .end annotation
.end field

.field private final resourceId:I
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field

.field private resourceName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;)V
    .registers 4
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "method"
        }
    .end annotation

    .line 1087
    const-class v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    .line 1088
    iput p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->resourceId:I

    .line 1089
    iput-object p2, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->method:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    .line 1090
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 4

    .line 1070
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;-><init>(ILandroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 1094
    const-string v0, "with string from resource id: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->resourceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 1095
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->resourceName:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 1096
    const-string v0, "["

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->resourceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v1, "]"

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1098
    :cond_24
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 1099
    const-string v0, " value: "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->expectedText:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1101
    :cond_33
    return-void
.end method

.method public matchesSafely(Landroid/widget/TextView;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->expectedText:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 1107
    :try_start_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->expectedText:Ljava/lang/String;

    .line 1108
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->resourceName:Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_1c} :catch_1d

    .line 1111
    goto :goto_1e

    .line 1109
    :catch_1d
    move-exception v0

    .line 1114
    :cond_1e
    :goto_1e
    sget-object v0, Landroidx/test/espresso/matcher/ViewMatchers$2;->$SwitchMap$androidx$test$espresso$matcher$ViewMatchers$WithCharSequenceMatcher$TextViewMethod:[I

    iget-object v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->method:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    invoke-virtual {v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    .line 1122
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected TextView method: "

    iget-object v1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->method:Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;

    invoke-virtual {v1}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher$TextViewMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    .line 1119
    :pswitch_44
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1120
    goto :goto_4e

    .line 1116
    :pswitch_49
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1117
    nop

    .line 1125
    :goto_4e
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->expectedText:Ljava/lang/String;

    if-eqz v0, :cond_60

    if-eqz p1, :cond_60

    .line 1127
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 p1, 0x1

    goto :goto_61

    :cond_60
    const/4 p1, 0x0

    .line 1125
    :goto_61
    return p1

    .line 1122
    :cond_62
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_68
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_49
        :pswitch_44
    .end packed-switch
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "textView"
        }
    .end annotation

    .line 1069
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithCharSequenceMatcher;->matchesSafely(Landroid/widget/TextView;)Z

    move-result p1

    return p1
.end method
