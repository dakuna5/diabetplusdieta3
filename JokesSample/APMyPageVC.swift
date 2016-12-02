//
//  APMyPageVC.swift
//  JokesSample
//
//  Created by alexeyweb11@gmail.com on 02/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APMyPageVC : ANViewController, UITableViewDataSource, UITableViewDelegate, ANDataListDelegate  {
    
    @IBOutlet weak var hederContainer: UIView?
    @IBOutlet weak var hederContainerCoverImage: UIImageView?
    @IBOutlet weak var hederContainerBlackGradient: ANGradientView?
    @IBOutlet weak var hederContainerUserHeaderPic: UIImageView?
    @IBOutlet weak var hederContainerStatus: UILabel?
    @IBOutlet weak var poststable: UITableView?
    open var poststableDataList: ANDataList?;

    open var dataDictionary: NSDictionary? {
        didSet {
            self.hederContainerStatus!.text = self.dataDictionary!.an_object(forJsonPath: "joke") as! String?
        }
    }

    override public func awakeFromNib() -> Void {
        super.awakeFromNib();
        self.poststableDataList = ANDataList(type: ANDataTypeJSON, filenameOrUrl: "http://animaapp.s3.amazonaws.com/demo-apps/jokes/jokes_my_jokes.json", delegate: self);
        self.poststableDataList!.refresh();
    }



    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == self.poststable) {
            return Int(self.poststableDataList!.count());
        }
        return 0;
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (tableView == self.poststable) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "mePostCell") as! APMePostCell;
            cell.dataDictionary = self.poststableDataList!.item(at: UInt(indexPath.row)) as NSDictionary?;
            cell.delegate = self;
            return cell;
        }
        return UITableViewCell();
    }

    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (tableView == self.poststable) {
            return 170.0;
        }
        return 0.0;
    }

    public func dataListDidFinishLoading(_ dataList: ANDataList) {
        if (dataList == self.poststableDataList) {
            guard let poststable = poststable else {
                return
            }
            poststable.reloadData();
        }
    }
}