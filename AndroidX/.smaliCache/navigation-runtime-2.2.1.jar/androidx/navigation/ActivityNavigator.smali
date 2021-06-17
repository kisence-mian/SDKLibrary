.class public Landroidx/navigation/ActivityNavigator;
.super Landroidx/navigation/Navigator;
.source "ActivityNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ActivityNavigator$Extras;,
        Landroidx/navigation/ActivityNavigator$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_NAV_CURRENT:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:current"

.field private static final EXTRA_NAV_SOURCE:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:source"

.field private static final EXTRA_POP_ENTER_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popEnterAnim"

.field private static final EXTRA_POP_EXIT_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popExitAnim"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHostActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    .line 58
    :goto_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1b

    .line 59
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_13

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    .line 61
    goto :goto_1b

    .line 63
    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_5

    .line 65
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static applyPopAnimationsToPendingTransition(Landroid/app/Activity;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_7

    .line 78
    return-void

    .line 80
    :cond_7
    const-string v1, "android-support-navigation:ActivityNavigator:popEnterAnim"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "popEnterAnim":I
    const-string v3, "android-support-navigation:ActivityNavigator:popExitAnim"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, "popExitAnim":I
    if-ne v1, v2, :cond_18

    if-eq v3, v2, :cond_26

    .line 83
    :cond_18
    const/4 v4, 0x0

    if-eq v1, v2, :cond_1d

    move v5, v1

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    move v1, v5

    .line 84
    if-eq v3, v2, :cond_22

    move v4, v3

    :cond_22
    move v3, v4

    .line 85
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 87
    :cond_26
    return-void
.end method


# virtual methods
.method public createDestination()Landroidx/navigation/ActivityNavigator$Destination;
    .registers 2

    .line 97
    new-instance v0, Landroidx/navigation/ActivityNavigator$Destination;

    invoke-direct {v0, p0}, Landroidx/navigation/ActivityNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .registers 2

    .line 42
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigator;->createDestination()Landroidx/navigation/ActivityNavigator$Destination;

    move-result-object v0

    return-object v0
.end method

.method final getContext()Landroid/content/Context;
    .registers 2

    .line 91
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .registers 14
    .param p1, "destination"    # Landroidx/navigation/ActivityNavigator$Destination;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 113
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_8e

    .line 119
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getDataPattern()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "dataPattern":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 123
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v2, "data":Ljava/lang/StringBuffer;
    const-string v3, "\\{(.+?)\\}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 125
    .local v3, "fillInPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 126
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_2d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 127
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "argName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 129
    const-string v6, ""

    invoke-virtual {v4, v2, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 131
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .end local v5    # "argName":Ljava/lang/String;
    goto :goto_2d

    .line 133
    .restart local v5    # "argName":Ljava/lang/String;
    :cond_53
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to fill data pattern "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    .end local v5    # "argName":Ljava/lang/String;
    :cond_80
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    .end local v1    # "dataPattern":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/StringBuffer;
    .end local v3    # "fillInPattern":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_8e
    instance-of v1, p4, Landroidx/navigation/ActivityNavigator$Extras;

    if-eqz v1, :cond_9c

    .line 142
    move-object v1, p4

    check-cast v1, Landroidx/navigation/ActivityNavigator$Extras;

    .line 143
    .local v1, "extras":Landroidx/navigation/ActivityNavigator$Extras;
    invoke-virtual {v1}, Landroidx/navigation/ActivityNavigator$Extras;->getFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    .end local v1    # "extras":Landroidx/navigation/ActivityNavigator$Extras;
    :cond_9c
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_a7

    .line 147
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    :cond_a7
    if-eqz p3, :cond_b4

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 150
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    :cond_b4
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    const-string v2, "android-support-navigation:ActivityNavigator:current"

    const/4 v3, 0x0

    if-eqz v1, :cond_cc

    .line 153
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, "hostIntent":Landroid/content/Intent;
    if-eqz v1, :cond_cc

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 156
    .local v4, "hostCurrentId":I
    if-eqz v4, :cond_cc

    .line 157
    const-string v5, "android-support-navigation:ActivityNavigator:source"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    .end local v1    # "hostIntent":Landroid/content/Intent;
    .end local v4    # "hostCurrentId":I
    :cond_cc
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getId()I

    move-result v1

    .line 162
    .local v1, "destId":I
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    if-eqz p3, :cond_e7

    .line 165
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    move-result v2

    const-string v4, "android-support-navigation:ActivityNavigator:popEnterAnim"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    move-result v2

    const-string v4, "android-support-navigation:ActivityNavigator:popExitAnim"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    :cond_e7
    instance-of v2, p4, Landroidx/navigation/ActivityNavigator$Extras;

    if-eqz v2, :cond_104

    .line 169
    move-object v2, p4

    check-cast v2, Landroidx/navigation/ActivityNavigator$Extras;

    .line 170
    .local v2, "extras":Landroidx/navigation/ActivityNavigator$Extras;
    invoke-virtual {v2}, Landroidx/navigation/ActivityNavigator$Extras;->getActivityOptions()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v4

    .line 171
    .local v4, "activityOptions":Landroidx/core/app/ActivityOptionsCompat;
    if-eqz v4, :cond_fe

    .line 172
    iget-object v5, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v5, v0, v6}, Landroidx/core/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_103

    .line 174
    :cond_fe
    iget-object v5, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    .end local v2    # "extras":Landroidx/navigation/ActivityNavigator$Extras;
    .end local v4    # "activityOptions":Landroidx/core/app/ActivityOptionsCompat;
    :goto_103
    goto :goto_109

    .line 177
    :cond_104
    iget-object v2, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    :goto_109
    if-eqz p3, :cond_12a

    iget-object v2, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    if-eqz v2, :cond_12a

    .line 180
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    move-result v2

    .line 181
    .local v2, "enterAnim":I
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getExitAnim()I

    move-result v4

    .line 182
    .local v4, "exitAnim":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_11c

    if-eq v4, v5, :cond_12a

    .line 183
    :cond_11c
    if-eq v2, v5, :cond_120

    move v6, v2

    goto :goto_121

    :cond_120
    const/4 v6, 0x0

    :goto_121
    move v2, v6

    .line 184
    if-eq v4, v5, :cond_125

    move v3, v4

    .line 185
    .end local v4    # "exitAnim":I
    .local v3, "exitAnim":I
    :cond_125
    iget-object v4, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 191
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :cond_12a
    const/4 v2, 0x0

    return-object v2

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "destId":I
    :cond_12c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have an Intent set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_150

    :goto_14f
    throw v0

    :goto_150
    goto :goto_14f
.end method

.method public bridge synthetic navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .registers 5

    .line 42
    check-cast p1, Landroidx/navigation/ActivityNavigator$Destination;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/ActivityNavigator;->navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method public popBackStack()Z
    .registers 2

    .line 102
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
