.class final Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;
.super Lorg/hamcrest/TypeSafeMatcher;
.source "ViewMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/matcher/ViewMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WithEffectiveVisibilityMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/hamcrest/TypeSafeMatcher<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)V
    .registers 2
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1281
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeMatcher;-><init>()V

    .line 1282
    iput-object p1, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    .line 1283
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;Landroidx/test/espresso/matcher/ViewMatchers$1;)V
    .registers 3

    .line 1276
    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;-><init>(Landroidx/test/espresso/matcher/ViewMatchers$Visibility;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 1287
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1288
    const-string v2, "view has effective visibility=%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1287
    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 1289
    return-void
.end method

.method public matchesSafely(Landroid/view/View;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v0}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_39

    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_17

    .line 1295
    return v1

    .line 1297
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_38

    .line 1298
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1299
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_17

    .line 1300
    return v1

    .line 1303
    :cond_38
    return v2

    .line 1305
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_46

    .line 1306
    return v2

    .line 1308
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_67

    .line 1309
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1310
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->visibility:Landroidx/test/espresso/matcher/ViewMatchers$Visibility;

    invoke-virtual {v3}, Landroidx/test/espresso/matcher/ViewMatchers$Visibility;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_46

    .line 1311
    return v2

    .line 1314
    :cond_67
    return v1
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 1275
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/matcher/ViewMatchers$WithEffectiveVisibilityMatcher;->matchesSafely(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
