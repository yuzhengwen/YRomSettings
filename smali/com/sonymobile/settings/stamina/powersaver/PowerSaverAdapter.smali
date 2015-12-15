.class Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerSaverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPowerSaverEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->loadFeatures()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->getItem(I)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    move-result-object v1

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v3, 0x0

    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v4, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v6, 0x7f0f00cf

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    const v6, 0x7f0f0035

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    if-eqz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    const v6, 0x7f0f01ca

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-boolean v6, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    iget-boolean v6, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    return-object p2

    :pswitch_0
    const v3, 0x7f0400d0

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0400d1

    goto :goto_0

    :cond_2
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    return v0
.end method

.method public isPowerSaverEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    return v0
.end method

.method public loadFeatures()V
    .locals 12

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverFeatures(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v1, "id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v1, "overriden"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v1, "param"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v1, "saved_state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v1, "state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;-><init>(Ljava/lang/String;ZIII)V

    const-string v1, "Brightness"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    const v1, 0x7f020103

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090030

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    :goto_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    :try_start_1
    const-string v1, "AutoSync"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f020109

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090037

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    :cond_1
    const-string v1, "BT"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f020101

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090035

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    :cond_2
    const-string v1, "DataTraffic"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f020104

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090038

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    :cond_3
    const-string v1, "Gamma"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f020105

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090039

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    :cond_4
    const-string v1, "GPS"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f020106

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090036

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto :goto_1

    :cond_5
    const-string v1, "haptic"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f020107

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090034

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    :cond_6
    const-string v1, "Timeout"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    const v1, 0x7f02010a

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090032

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    :cond_7
    const-string v1, "Wifi"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f02010b

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f090033

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    :cond_8
    const-string v1, "BraviaEngine"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f020102

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f09003a

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    :cond_9
    const-string v1, "XReality"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f020102

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f09003b

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    :cond_a
    const-string v1, "ImageEnhancement"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f020102

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f09003c

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    :cond_b
    const-string v1, "xLOUD"

    iget-object v2, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f02010c

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->iconId:I

    const v1, 0x7f09003d

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->titleId:I

    goto/16 :goto_1

    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public setPowerSaverEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->mIsPowerSaverEnabled:Z

    return-void
.end method
